

CXX = g++
CXXFLAGS = -g -Wall -Wextra -Og 

all: bin bin/normalquery bin/construct_index bin/query_width bin/normal_benchmark bin/pwpl_benchmark bin/mypwpl_benchmark

bin:
	mkdir -p bin

bin/normalquery: normalquery.cpp
	$(CXX) $(CXXFLAGS) -Isrc -o $@ $^ -lpthread

bin/construct_index: construct_index_main.cpp pwpl_widestpath.h
	$(CXX) $(CXXFLAGS) -Isrc -o $@ $^ -lpthread
	
bin/query_width: query_width_main.cpp pwpl_widestpath.h
	$(CXX) $(CXXFLAGS) -Isrc -o $@ $^ -lpthread
	
bin/normal_benchmark: normal_benchmark.cpp
	$(CXX) $(CXXFLAGS) -Isrc -o $@ $^ -lpthread
	
bin/pwpl_benchmark: pwpl_benchmark.cpp pwpl_widestpath.h
	$(CXX) $(CXXFLAGS) -Isrc -o $@ $^ -lpthread

bin/mypwpl_benchmark: mypwpl_benchmark.cpp pwpl_widestpath.h
	$(CXX) $(CXXFLAGS) -Isrc -o $@ $^ -lpthread

clean:
	rm -rf bin
CXXFLAGS += -std=c++11 
