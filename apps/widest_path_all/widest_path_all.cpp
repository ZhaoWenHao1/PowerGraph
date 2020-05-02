/**  
 * Copyright (c) 2009 Carnegie Mellon University. 
 *     All rights reserved.
 *
 *  Licensed under the Apache License, Version 2.0 (the "License");
 *  you may not use this file except in compliance with the License.
 *  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 *  Unless required by applicable law or agreed to in writing,
 *  software distributed under the License is distributed on an "AS
 *  IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either
 *  express or implied.  See the License for the specific language
 *  governing permissions and limitations under the License.
 *
 * For more about this software visit:
 *
 *      http://www.graphlab.ml.cmu.edu
 *
 */

#include <vector>
#include <string>
#include <fstream>


#include <graphlab.hpp>


/**
 * \brief The type used to measure distances in the graph.
 */
typedef float distance_type;

/**
 * \brief The current distance of the vertex.
 *  顶点数据：存放到达定点的当前最宽路径
 */
struct vertex_data : graphlab::IS_POD_TYPE {
  distance_type dist;
  vertex_data(distance_type dist = std::numeric_limits<distance_type>::min()) :
    dist(dist) { }
}; // end of vertex data



/**
 * \brief The distance associated with the edge.
 * 边数据：边的权值
 */
struct edge_data : graphlab::IS_POD_TYPE {
  distance_type dist;
  edge_data(distance_type dist = 1) : dist(dist) { }
}; // end of edge data


/**
 * \brief The graph type encodes the distances between vertices and
 * edges
 */
typedef graphlab::distributed_graph<vertex_data, edge_data> graph_type;


/**
 * \brief Get the other vertex in the edge.
 * 根据现有的edge和vertex得到edge的另一个顶点
 */
inline graph_type::vertex_type
get_other_vertex(const graph_type::edge_type& edge,
                 const graph_type::vertex_type& vertex) {
  return vertex.id() == edge.source().id()? edge.target() : edge.source();
}


/**
 * \brief Use directed or undireced edges.
 * 
 */
bool DIRECTED_widestpathall = false; // 边是否有向，默认为无向，即图为无向图

/**
 * sources 中添加的边是否为源点，
 */
 bool ISSource = true; 

/**
 * \brief This class is used as the gather type.
 */
struct widest_path_type : graphlab::IS_POD_TYPE {
  distance_type dist;
  widest_path_type(distance_type dist = 
                    std::numeric_limits<distance_type>::min()) : dist(dist) { }
  // sum操作，选取gather到的最大路径
  widest_path_type& operator+=(const widest_path_type& other) {
    dist = std::max(dist, other.dist);
    return *this;
  }
};

/*
 * Loads graphs in the form 'id (id edge_strength)*'
 *
 */
// 输入的字符流格式为： vid n oid val oid val oid val  一个顶点id 和 n个其他顶点id和边长
bool line_parser(graph_type& graph, const std::string& filename, const std::string& textline) {
  if(textline.empty()) return true;
  std::stringstream strm(textline);
  graphlab::vertex_id_type vid;
  size_t n;
  // first entry in the line is a vertex ID
  strm >> vid;
  if (strm.fail()) return false;
  strm >> n;
  if (strm.fail()) return true;
  size_t nadded = 0;
  // insert this vertex with its label
  // graph.add_vertex(vid);  // 不手动添加顶点
  // while there are elements in the line, continue to read until we fail
  double edge_val=1.0;
  while(strm.good()){
    graphlab::vertex_id_type other_vid;
    strm >> other_vid;
    strm >> edge_val;
    if (strm.fail())
      break;
    if(vid != other_vid) graph.add_edge(vid, other_vid,edge_val);
    ++nadded;
  }
  if (n != nadded) return false;
  return true;
} // end of adj parser


/**
 * \brief The single source shortest path vertex program.
 * 单源最短路径的顶点程序，继承graphlab::ivertex_program和graphlab::IS_POD_TYPE
 */
class widestpathall :
  public graphlab::ivertex_program<graph_type, 
                                   graphlab::empty,
                                   widest_path_type>,
  public graphlab::IS_POD_TYPE {
  distance_type max_dist;
  bool changed;
public:


  void init(icontext_type& context, const vertex_type& vertex,
            const widest_path_type& msg) {
    max_dist = msg.dist;
  } 

  /**
   * \brief We use the messaging model to compute the widestpathall update
   */
  edge_dir_type gather_edges(icontext_type& context, 
                             const vertex_type& vertex) const { 
    return graphlab::NO_EDGES;
  }; // end of gather_edges 


  // /** 
  //  * \brief Collect the distance to the neighbor
  //  */
  // widest_path_type gather(icontext_type& context, const vertex_type& vertex, 
  //                          edge_type& edge) const {
  //   return widest_path_type(edge.data() + 
  //                            get_other_vertex(edge, vertex).data());
  // } // end of gather function


  /**
   * \brief If the distance is smaller then update
   */
  void apply(icontext_type& context, vertex_type& vertex,
             const graphlab::empty& empty) {
    changed = false;
    if(vertex.data().dist < max_dist) {
      changed = true;
      vertex.data().dist = max_dist;
    }
  }

  /**
   * \brief Determine if widestpathall should run on all edges or just in edges
   */
  edge_dir_type scatter_edges(icontext_type& context, 
                             const vertex_type& vertex) const {
    if(changed)
      return DIRECTED_widestpathall? (ISSource ?  graphlab::OUT_EDGES : graphlab::IN_EDGES) : graphlab::ALL_EDGES;
    else return graphlab::NO_EDGES;
    /*if(changed){
      if(DIRECTED_widestpathall){
        if(ISSource)
          return graphlab::IN_EDGES; // 每个节点node根据自己的入度边计算，因为是计算source到node的最宽路径
        else
          return graphlab::OUT_EDGES; // 每个节点node根据自己的出度边计算，因为是计算node到source的最宽路径
      }
      else
        return graphlab::ALL_EDGES;
    }
    else return graphlab::NO_EDGES;
    */
    
  }; // end of scatter_edges

  /**
   * \brief The scatter function just signal adjacent pages 
   * 对于每一个出度的边/所有边，都执行一次
   */
  void scatter(icontext_type& context, const vertex_type& vertex,
               edge_type& edge) const {
    const vertex_type other = get_other_vertex(edge, vertex);
    distance_type newd = std::min(vertex.data().dist, edge.data().dist);
    if (other.data().dist < newd) {
      const widest_path_type msg(newd);
      context.signal(other, msg);
    }
  } // end of scatter

}; // end of shortest path vertex program




/**
 * \brief We want to save the final graph so we define a write which will be
 * used in graph.save("path/prefix", shortest_path_writer()) to save the graph.
 */
struct widest_path_writer {
  std::string save_vertex(const graph_type::vertex_type& vtx) {
    std::stringstream strm;
    strm << vtx.id() << "\t" << vtx.data().dist << "\n";
    return strm.str();
  }
  std::string save_edge(graph_type::edge_type e) { return ""; }
}; // end of shortest_path_writer


// 返回度比较大的
struct max_deg_vertex_reducer: public graphlab::IS_POD_TYPE {
  size_t degree;
  graphlab::vertex_id_type vid;
  max_deg_vertex_reducer& operator+=(const max_deg_vertex_reducer& other) {
    if (degree < other.degree) {
      (*this) = other;
    }
    return (*this);
  }
};

// 找到度最大的顶点  将顶点的入度和出度的和 顶点id 封装到 max_deg_vertex_reducer中，而该类重写了sum函数，多个
// max_deg_vertex_reducer实例 sum后得到的是 度最大的那个实例
max_deg_vertex_reducer find_max_deg_vertex(const graph_type::vertex_type vtx) {
  max_deg_vertex_reducer red;
  red.degree = vtx.num_in_edges() + vtx.num_out_edges();
  red.vid = vtx.id();
  return red;
}

std::string ltos(long l)
{
    std::ostringstream os;
    os<<l;
    std::string result;
    std::istringstream is(os.str());
    is >> result;
    return result;
 
}
double GetCurrentTimeSec() {    //获取当前系统时间，单位秒（s）
        struct timeval tv{};
        gettimeofday(&tv, NULL);
        return tv.tv_sec + tv.tv_usec * 1e-6;
}
std::vector<graphlab::vertex_id_type> GetVid(std::string graph_path){
    std::vector<graphlab::vertex_id_type> vec; 
    std::string s;
    std::ifstream ifs(graph_path.c_str());
    if(!ifs.is_open()){
        std::cout << "file error" << std::endl;
        return vec;
    }
    graphlab::vertex_id_type vid;
    char * cs;
    while(getline(ifs,s)){
        cs = (char *)s.c_str();
        sscanf(cs,"%ld",&vid);
        vec.push_back(vid);
    }
    return vec;
}
bool RunWidestPath(graphlab::distributed_control dc, graphlab::command_line_options clopts,
                    std::string graph_dir,std::string exec_type,int file_num, 
                    graphlab::vertex_id_type source,std::string saveprefix){
          // Build the graph ----------------------------------------------------------
  
  return true;
}


int main(int argc, char** argv) {
  // Initialize control plain using mpi
  graphlab::mpi_tools::init(argc, argv);
  graphlab::distributed_control dc;
  global_logger().set_log_level(LOG_INFO);

  // Parse command line options -----------------------------------------------
  graphlab::command_line_options 
    clopts("widest Path Algorithm.");
  std::string graph_dir;
  std::string format = "adj";
  std::string exec_type = "synchronous";
  size_t powerlaw = 0;
  int file_num = 4;
  std::vector<unsigned int> sources; // 源顶点vid 如果只有一个就是单源最短，如果有多个就是到多个源中的任一个最短
  bool max_degree_source = false;
  clopts.attach_option("graph", graph_dir,
                       "The graph file.  If none is provided "
                       "then a toy graph will be created");
  clopts.add_positional("graph");
  clopts.attach_option("format", format,
                       "graph format");
  clopts.attach_option("source", sources,
                       "The source vertices");
  clopts.attach_option("max_degree_source", max_degree_source,
                       "Add the vertex with maximum degree as a source");

  clopts.add_positional("source");

  clopts.attach_option("directed", DIRECTED_widestpathall,
                       "Treat edges as directed.");

  /* clopts.attach_option("ISSource", ISSource,
                       "Treat source as source."); */

  clopts.attach_option("engine", exec_type, 
                       "The engine type synchronous or asynchronous");
 
  
  clopts.attach_option("powerlaw", powerlaw,
                       "Generate a synthetic powerlaw out-degree graph. ");
  std::string saveprefix;
  clopts.attach_option("saveprefix", saveprefix,
                       "If set, will save the resultant pagerank to a "
                       "sequence of files with prefix saveprefix");
  clopts.attach_option("savefilenum",file_num,"save file nums,define 4");

  if(!clopts.parse(argc, argv)) {
    dc.cout() << "Error in parsing command line arguments." << std::endl;
    return EXIT_FAILURE;
  }
  std::vector<graphlab::vertex_id_type> vec_vid = GetVid(graph_dir);
  std::string tmps;
  double total_time = -GetCurrentTimeSec();
  for(int i = 0;i < vec_vid.size();i++){
    std::cout << vec_vid[i] << '\t';
    tmps = ltos(vec_vid[i]);

    ISSource = true;
    std::string saveprefix_ = saveprefix + "_Sour_" + tmps;
    // RunWidestPath(dc, clopts, graph_dir,exec_type, file_num, vec_vid[i], saveprefix_);
    graph_type graph(dc, clopts);
    /* double time_load_graph = -GetCurrentTimeSec(); */
    if (graph_dir.length() > 0){
      /* dc.cout() << "Loading graph in line parser " << std::endl; */
      graph.load(graph_dir, line_parser);
    }
    else{
      dc.cout() << "graph file must be specified" << std::endl;
      clopts.print_description();
      return EXIT_FAILURE;
    }
    
    /* time_load_graph += GetCurrentTimeSec(); */
    /* dc.cout() << "time_load_graph: " << time_load_graph << std::endl; */
    /*GRAPH_TYPE GRAPH_IT(GRAPH);
    GRAPH.COMPLETE_SET();*/
    // must call finalize before querying the graph
    graph.finalize();
    /* dc.cout() << "#vertices:  " << graph.num_vertices() << std::endl
              << "#edges:     " << graph.num_edges() << std::endl; */


    // Running The Engine -------------------------------------------------------
    graphlab::omni_engine<widestpathall> engine(dc, graph, exec_type, clopts);

    engine.signal(vec_vid[i], widest_path_type(std::numeric_limits<distance_type>::max()));


    engine.start();
    const float runtime = engine.elapsed_seconds();
    /* dc.cout() << "Finished Running engine in " << runtime
              << " seconds." << std::endl; */


    // Save the final graph -----------------------------------------------------
    if (saveprefix != "") {
      graph.save(saveprefix_, widest_path_writer(),
                false,    // do not gzip
                true,     // save vertices
                false,
                file_num);   // do not save edges
    }
    graph.clear();


    ISSource = false;
    saveprefix_ = saveprefix + "_Target_" + tmps;
    // RunWidestPath(dc, clopts, graph_dir,exec_type, file_num, vec_vid[i], saveprefix_);
    graph_type graph2(dc, clopts);
    /* double time_load_graph2 = -GetCurrentTimeSec(); */
    if (graph_dir.length() > 0){
      /* dc.cout() << "Loading graph in line parser " << std::endl; */
      graph2.load(graph_dir, line_parser);
    }
    else{
      dc.cout() << "graph file must be specified" << std::endl;
      clopts.print_description();
      return EXIT_FAILURE;
    }
    
    /* time_load_graph2 += GetCurrentTimeSec(); */
    /* dc.cout() << "time_load_graph: " << time_load_graph2 << std::endl; */
    /*GRAPH_TYPE GRAPH_IT(GRAPH);
    GRAPH.COMPLETE_SET();*/
    // must call finalize before querying the graph
    graph2.finalize();
    /* dc.cout() << "#vertices:  " << graph2.num_vertices() << std::endl
              << "#edges:     " << graph2.num_edges() << std::endl; */


    // Running The Engine -------------------------------------------------------
    graphlab::omni_engine<widestpathall> engine2(dc, graph2, exec_type, clopts);

    engine2.signal(vec_vid[i], widest_path_type(std::numeric_limits<distance_type>::max()));


    engine2.start();
    /* const float runtime2 = engine2.elapsed_seconds();
    dc.cout() << "Finished Running engine2 in " << runtime2
              << " seconds." << std::endl; */


    // Save the final graph -----------------------------------------------------
    if (saveprefix != "") {
      graph2.save(saveprefix_, widest_path_writer(),
                false,    // do not gzip
                true,     // save vertices
                false,
                file_num);   // do not save edges
    }
    graph2.clear();
  }
  total_time += GetCurrentTimeSec();
  dc.cout() << std::endl << "total time: " << total_time << std::endl;
  // Tear-down communication layer and quit -----------------------------------
  graphlab::mpi_tools::finalize();
  return EXIT_SUCCESS;
} // End of main


// ./widest_path_all --graph graph.txt --source 1 --directed true --ISSource true --saveprefix widestpathallRes --savefilenum 1
// note: --directed true 表示有向图 false表示无向图  默认为无向图
// --ISSource true表示以source[i]为源点，false表示以source[i]为终点，一个正向，一个反向