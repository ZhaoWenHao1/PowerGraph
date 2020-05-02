/**
 * 对索引算法构建出的索引进行一百万次的随机查询，获取平均查询时间
 */
#include "pwpl_widestpath.h"
#include <sys/time.h>
const int kNumQueries = 1000000;


int main(int argc, char **argv){
    // 生成idx
    if (argc != 3 || (argv[2][0] != '0' && argv[2][0] != '1')) {  
        // 0表示不包含权值，1表示包含权值
        cerr << "usage: construct_index GRAPH  Have_weight(0/1)" << endl;
        exit(EXIT_FAILURE);
    }
    
    bool Have_weight = (argv[2][0] == '1');
    WidestPath pwpl;
    double time_start = GetCurrentTimeSec();
    // 读取文件为PowerGraph相同格式
    if (!pwpl.constructIndex(argv[1], Have_weight)) {
        cerr << "error: Construction failed" << endl;
        exit(EXIT_FAILURE);
    }
    double elapsed_time = GetCurrentTimeSec() - time_start;
    cout << "construction time: " << elapsed_time << endl; 
    pwpl.printStatistic();
    // 存储迭代时间
    pwpl.storeIteratiTime("time_of_PMDijkstra.txt");

    // 存储索引
    int len_of_filename = strlen(argv[1]);
    char outfile[len_of_filename+1];
    strncpy(outfile, argv[1],len_of_filename-4);
    outfile[len_of_filename-4] = '.';
    outfile[len_of_filename-3] = 'i';
    outfile[len_of_filename-2] = 'd';
    outfile[len_of_filename-1] = 'x';
    outfile[len_of_filename] = '\0';
    if (!pwpl.storeIndex(outfile)) {
        cerr << "error: Store failed" << endl;
        exit(EXIT_FAILURE);
    }
    
    cout << "Construct idx success ! " << endl;
    vector<int> vs(kNumQueries), ws(kNumQueries);
    for (int i = 0; i < kNumQueries; ++i) {
        vs[i] = rand() % pwpl.getVerticeNum();
        ws[i] = rand() % pwpl.getVerticeNum();
    }

    time_start = GetCurrentTimeSec();
    for (int i = 0; i < kNumQueries; ++i) {
        pwpl.queryDistance(vs[i], ws[i]);
    }
    elapsed_time = GetCurrentTimeSec() - time_start + pwpl.time_load_ + pwpl.time_indexing_;
    cout << "average query time(contains load data time ans construct idx time):   " 
         << elapsed_time / kNumQueries * 1E6
         << " microseconds" << endl;

    exit(EXIT_SUCCESS);
}