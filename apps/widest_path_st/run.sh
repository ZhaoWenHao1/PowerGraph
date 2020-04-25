cd ~/PowerGraph
./configure
cd debug/apps/widest_path_st/
make clean
make
./widest_path_st --graph ~/PowerGraph/exampleGraph.txt --directed true --saveprefix widestparhResSour --savefilenum 1
./widest_path_st --graph ~/PowerGraph/exampleGraph.txt --directed false --saveprefix widestparhResTarget --savefilenum 1
