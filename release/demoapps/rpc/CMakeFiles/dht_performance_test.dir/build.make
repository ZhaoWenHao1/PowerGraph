# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.13

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /root/PowerGraph

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /root/PowerGraph/release

# Include any dependencies generated for this target.
include demoapps/rpc/CMakeFiles/dht_performance_test.dir/depend.make

# Include the progress variables for this target.
include demoapps/rpc/CMakeFiles/dht_performance_test.dir/progress.make

# Include the compile flags for this target's objects.
include demoapps/rpc/CMakeFiles/dht_performance_test.dir/flags.make

demoapps/rpc/CMakeFiles/dht_performance_test.dir/dht_performance_test.cpp.o: demoapps/rpc/CMakeFiles/dht_performance_test.dir/flags.make
demoapps/rpc/CMakeFiles/dht_performance_test.dir/dht_performance_test.cpp.o: ../demoapps/rpc/dht_performance_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/PowerGraph/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object demoapps/rpc/CMakeFiles/dht_performance_test.dir/dht_performance_test.cpp.o"
	cd /root/PowerGraph/release/demoapps/rpc && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/dht_performance_test.dir/dht_performance_test.cpp.o -c /root/PowerGraph/demoapps/rpc/dht_performance_test.cpp

demoapps/rpc/CMakeFiles/dht_performance_test.dir/dht_performance_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dht_performance_test.dir/dht_performance_test.cpp.i"
	cd /root/PowerGraph/release/demoapps/rpc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/PowerGraph/demoapps/rpc/dht_performance_test.cpp > CMakeFiles/dht_performance_test.dir/dht_performance_test.cpp.i

demoapps/rpc/CMakeFiles/dht_performance_test.dir/dht_performance_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dht_performance_test.dir/dht_performance_test.cpp.s"
	cd /root/PowerGraph/release/demoapps/rpc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/PowerGraph/demoapps/rpc/dht_performance_test.cpp -o CMakeFiles/dht_performance_test.dir/dht_performance_test.cpp.s

# Object files for target dht_performance_test
dht_performance_test_OBJECTS = \
"CMakeFiles/dht_performance_test.dir/dht_performance_test.cpp.o"

# External object files for target dht_performance_test
dht_performance_test_EXTERNAL_OBJECTS =

demoapps/rpc/dht_performance_test: demoapps/rpc/CMakeFiles/dht_performance_test.dir/dht_performance_test.cpp.o
demoapps/rpc/dht_performance_test: demoapps/rpc/CMakeFiles/dht_performance_test.dir/build.make
demoapps/rpc/dht_performance_test: src/graphlab/libgraphlab.a
demoapps/rpc/dht_performance_test: ../deps/local/lib/libboost_filesystem.a
demoapps/rpc/dht_performance_test: ../deps/local/lib/libboost_program_options.a
demoapps/rpc/dht_performance_test: ../deps/local/lib/libboost_system.a
demoapps/rpc/dht_performance_test: ../deps/local/lib/libboost_iostreams.a
demoapps/rpc/dht_performance_test: ../deps/local/lib/libboost_context.a
demoapps/rpc/dht_performance_test: ../deps/local/lib/libboost_date_time.a
demoapps/rpc/dht_performance_test: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi_cxx.so
demoapps/rpc/dht_performance_test: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
demoapps/rpc/dht_performance_test: /usr/lib/jvm/default-java/lib/server/libjvm.so
demoapps/rpc/dht_performance_test: ../deps/local/lib/libboost_filesystem.a
demoapps/rpc/dht_performance_test: ../deps/local/lib/libboost_program_options.a
demoapps/rpc/dht_performance_test: ../deps/local/lib/libboost_system.a
demoapps/rpc/dht_performance_test: ../deps/local/lib/libboost_iostreams.a
demoapps/rpc/dht_performance_test: ../deps/local/lib/libboost_context.a
demoapps/rpc/dht_performance_test: ../deps/local/lib/libboost_date_time.a
demoapps/rpc/dht_performance_test: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi_cxx.so
demoapps/rpc/dht_performance_test: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
demoapps/rpc/dht_performance_test: /usr/lib/jvm/default-java/lib/server/libjvm.so
demoapps/rpc/dht_performance_test: demoapps/rpc/CMakeFiles/dht_performance_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/PowerGraph/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable dht_performance_test"
	cd /root/PowerGraph/release/demoapps/rpc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dht_performance_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
demoapps/rpc/CMakeFiles/dht_performance_test.dir/build: demoapps/rpc/dht_performance_test

.PHONY : demoapps/rpc/CMakeFiles/dht_performance_test.dir/build

demoapps/rpc/CMakeFiles/dht_performance_test.dir/clean:
	cd /root/PowerGraph/release/demoapps/rpc && $(CMAKE_COMMAND) -P CMakeFiles/dht_performance_test.dir/cmake_clean.cmake
.PHONY : demoapps/rpc/CMakeFiles/dht_performance_test.dir/clean

demoapps/rpc/CMakeFiles/dht_performance_test.dir/depend:
	cd /root/PowerGraph/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/PowerGraph /root/PowerGraph/demoapps/rpc /root/PowerGraph/release /root/PowerGraph/release/demoapps/rpc /root/PowerGraph/release/demoapps/rpc/CMakeFiles/dht_performance_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : demoapps/rpc/CMakeFiles/dht_performance_test.dir/depend

