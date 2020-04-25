cd ~/PowerGraph
./configure
cd debug/apps/widest_path_st/
make clean
make
./widest_path_st --graph ~/PowerGraph/exampleGraph.txt --source 1 --directed true --ISSource true --saveprefix widestpathSour --savefilenum 1
./widest_path_st --graph ~/PowerGraph/exampleGraph.txt --source 1 --directed true --ISSource false --saveprefix widestpathTarget --savefilenum 1
