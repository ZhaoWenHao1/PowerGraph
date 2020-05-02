cd ~/PowerGraph
./configure
cd debug/apps/pwpl/
make clean
make
./mypwpl_benchmark ~/PowerGraph/graphfiles/simpleGraph.txt  0 >> log.txt
#./mypwpl_benchmark ~/PowerGraph/graphfiles/soc-pokec-relationships.txt  0 >> log.txt
#./widest_path --graph ~/PowerGraph/graphfiles/exampleGraph.txt --format cu --directed true --saveprefix widestparhResSour --savefilenum 1
#./widest_path --graph exampleGraph.txt --directed true --saveprefix widestparhResSour --savefilenum 1
#./widest_path_target --graph exampleGraph.txt --directed false --saveprefix widestparhResTarget --savefilenum 1
#./widest_path --graph ~/PowerGraph/graphfiles/soc-pokec-relationships.txt --format tsv --max_degree_source true
