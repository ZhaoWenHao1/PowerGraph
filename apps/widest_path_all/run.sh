cd ~/PowerGraph
./configure
cd debug/apps/widest_path_all/
make clean
make
./widest_path_all --graph ~/PowerGraph/exampleGraph.txt --directed true  --saveprefix widestpathall --savefilenum 1
# ./widest_path_all --graph ~/PowerGraph/exampleGraph.txt ---directed true --ISSource false --saveprefix widestpathallTarget --savefilenum 1
