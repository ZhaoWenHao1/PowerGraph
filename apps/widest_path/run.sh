cd ~/PowerGraph
./configure
cd debug/apps/widest_path/
make clean
make
./widest_path --graph exampleGraph.txt --directed true --saveprefix widestparhResSour --savefilenum 1
./widest_path_target --graph exampleGraph.txt --directed false --saveprefix widestparhResTarget --savefilenum 1
