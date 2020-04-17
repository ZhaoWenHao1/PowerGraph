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
include tests/CMakeFiles/local_graph_test.cxxtest.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/local_graph_test.cxxtest.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/local_graph_test.cxxtest.dir/flags.make

tests/local_graph_test.cxx.cpp: ../tests/local_graph_test.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/PowerGraph/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating local_graph_test.cxx.cpp"
	cd /root/PowerGraph/tests && /usr/bin/python /root/PowerGraph/cxxtest/cxxtestgen --runner=ErrorPrinter -o /root/PowerGraph/release/tests/local_graph_test.cxx.cpp local_graph_test.cxx

tests/CMakeFiles/local_graph_test.cxxtest.dir/local_graph_test.cxx.cpp.o: tests/CMakeFiles/local_graph_test.cxxtest.dir/flags.make
tests/CMakeFiles/local_graph_test.cxxtest.dir/local_graph_test.cxx.cpp.o: tests/local_graph_test.cxx.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/PowerGraph/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/CMakeFiles/local_graph_test.cxxtest.dir/local_graph_test.cxx.cpp.o"
	cd /root/PowerGraph/release/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -I/root/PowerGraph/tests -o CMakeFiles/local_graph_test.cxxtest.dir/local_graph_test.cxx.cpp.o -c /root/PowerGraph/release/tests/local_graph_test.cxx.cpp

tests/CMakeFiles/local_graph_test.cxxtest.dir/local_graph_test.cxx.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/local_graph_test.cxxtest.dir/local_graph_test.cxx.cpp.i"
	cd /root/PowerGraph/release/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -I/root/PowerGraph/tests -E /root/PowerGraph/release/tests/local_graph_test.cxx.cpp > CMakeFiles/local_graph_test.cxxtest.dir/local_graph_test.cxx.cpp.i

tests/CMakeFiles/local_graph_test.cxxtest.dir/local_graph_test.cxx.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/local_graph_test.cxxtest.dir/local_graph_test.cxx.cpp.s"
	cd /root/PowerGraph/release/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -I/root/PowerGraph/tests -S /root/PowerGraph/release/tests/local_graph_test.cxx.cpp -o CMakeFiles/local_graph_test.cxxtest.dir/local_graph_test.cxx.cpp.s

# Object files for target local_graph_test.cxxtest
local_graph_test_cxxtest_OBJECTS = \
"CMakeFiles/local_graph_test.cxxtest.dir/local_graph_test.cxx.cpp.o"

# External object files for target local_graph_test.cxxtest
local_graph_test_cxxtest_EXTERNAL_OBJECTS =

tests/local_graph_test.cxxtest: tests/CMakeFiles/local_graph_test.cxxtest.dir/local_graph_test.cxx.cpp.o
tests/local_graph_test.cxxtest: tests/CMakeFiles/local_graph_test.cxxtest.dir/build.make
tests/local_graph_test.cxxtest: src/graphlab/libgraphlab.a
tests/local_graph_test.cxxtest: ../deps/local/lib/libboost_filesystem.a
tests/local_graph_test.cxxtest: ../deps/local/lib/libboost_program_options.a
tests/local_graph_test.cxxtest: ../deps/local/lib/libboost_system.a
tests/local_graph_test.cxxtest: ../deps/local/lib/libboost_iostreams.a
tests/local_graph_test.cxxtest: ../deps/local/lib/libboost_context.a
tests/local_graph_test.cxxtest: ../deps/local/lib/libboost_date_time.a
tests/local_graph_test.cxxtest: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi_cxx.so
tests/local_graph_test.cxxtest: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
tests/local_graph_test.cxxtest: /usr/lib/jvm/default-java/lib/server/libjvm.so
tests/local_graph_test.cxxtest: ../deps/local/lib/libboost_filesystem.a
tests/local_graph_test.cxxtest: ../deps/local/lib/libboost_program_options.a
tests/local_graph_test.cxxtest: ../deps/local/lib/libboost_system.a
tests/local_graph_test.cxxtest: ../deps/local/lib/libboost_iostreams.a
tests/local_graph_test.cxxtest: ../deps/local/lib/libboost_context.a
tests/local_graph_test.cxxtest: ../deps/local/lib/libboost_date_time.a
tests/local_graph_test.cxxtest: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi_cxx.so
tests/local_graph_test.cxxtest: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
tests/local_graph_test.cxxtest: /usr/lib/jvm/default-java/lib/server/libjvm.so
tests/local_graph_test.cxxtest: tests/CMakeFiles/local_graph_test.cxxtest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/PowerGraph/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable local_graph_test.cxxtest"
	cd /root/PowerGraph/release/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/local_graph_test.cxxtest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/local_graph_test.cxxtest.dir/build: tests/local_graph_test.cxxtest

.PHONY : tests/CMakeFiles/local_graph_test.cxxtest.dir/build

tests/CMakeFiles/local_graph_test.cxxtest.dir/clean:
	cd /root/PowerGraph/release/tests && $(CMAKE_COMMAND) -P CMakeFiles/local_graph_test.cxxtest.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/local_graph_test.cxxtest.dir/clean

tests/CMakeFiles/local_graph_test.cxxtest.dir/depend: tests/local_graph_test.cxx.cpp
	cd /root/PowerGraph/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/PowerGraph /root/PowerGraph/tests /root/PowerGraph/release /root/PowerGraph/release/tests /root/PowerGraph/release/tests/CMakeFiles/local_graph_test.cxxtest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/local_graph_test.cxxtest.dir/depend

