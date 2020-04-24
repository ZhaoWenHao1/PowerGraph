cd ~/PowerGraph
./configure
cd debug/apps/widest_path/
make clean
make
./widest_path --graph exampleGraph.txt --directed true --saveprefix widestparhRes --savefilenum 1