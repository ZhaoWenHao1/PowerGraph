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
include tests/CMakeFiles/dc_fiber_consensus_test.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/dc_fiber_consensus_test.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/dc_fiber_consensus_test.dir/flags.make

tests/CMakeFiles/dc_fiber_consensus_test.dir/dc_fiber_consensus_test.cpp.o: tests/CMakeFiles/dc_fiber_consensus_test.dir/flags.make
tests/CMakeFiles/dc_fiber_consensus_test.dir/dc_fiber_consensus_test.cpp.o: ../tests/dc_fiber_consensus_test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/PowerGraph/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tests/CMakeFiles/dc_fiber_consensus_test.dir/dc_fiber_consensus_test.cpp.o"
	cd /root/PowerGraph/release/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/dc_fiber_consensus_test.dir/dc_fiber_consensus_test.cpp.o -c /root/PowerGraph/tests/dc_fiber_consensus_test.cpp

tests/CMakeFiles/dc_fiber_consensus_test.dir/dc_fiber_consensus_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/dc_fiber_consensus_test.dir/dc_fiber_consensus_test.cpp.i"
	cd /root/PowerGraph/release/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/PowerGraph/tests/dc_fiber_consensus_test.cpp > CMakeFiles/dc_fiber_consensus_test.dir/dc_fiber_consensus_test.cpp.i

tests/CMakeFiles/dc_fiber_consensus_test.dir/dc_fiber_consensus_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/dc_fiber_consensus_test.dir/dc_fiber_consensus_test.cpp.s"
	cd /root/PowerGraph/release/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/PowerGraph/tests/dc_fiber_consensus_test.cpp -o CMakeFiles/dc_fiber_consensus_test.dir/dc_fiber_consensus_test.cpp.s

# Object files for target dc_fiber_consensus_test
dc_fiber_consensus_test_OBJECTS = \
"CMakeFiles/dc_fiber_consensus_test.dir/dc_fiber_consensus_test.cpp.o"

# External object files for target dc_fiber_consensus_test
dc_fiber_consensus_test_EXTERNAL_OBJECTS =

tests/dc_fiber_consensus_test: tests/CMakeFiles/dc_fiber_consensus_test.dir/dc_fiber_consensus_test.cpp.o
tests/dc_fiber_consensus_test: tests/CMakeFiles/dc_fiber_consensus_test.dir/build.make
tests/dc_fiber_consensus_test: src/graphlab/libgraphlab.a
tests/dc_fiber_consensus_test: ../deps/local/lib/libboost_filesystem.a
tests/dc_fiber_consensus_test: ../deps/local/lib/libboost_program_options.a
tests/dc_fiber_consensus_test: ../deps/local/lib/libboost_system.a
tests/dc_fiber_consensus_test: ../deps/local/lib/libboost_iostreams.a
tests/dc_fiber_consensus_test: ../deps/local/lib/libboost_context.a
tests/dc_fiber_consensus_test: ../deps/local/lib/libboost_date_time.a
tests/dc_fiber_consensus_test: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi_cxx.so
tests/dc_fiber_consensus_test: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
tests/dc_fiber_consensus_test: /usr/lib/jvm/default-java/lib/server/libjvm.so
tests/dc_fiber_consensus_test: ../deps/local/lib/libboost_filesystem.a
tests/dc_fiber_consensus_test: ../deps/local/lib/libboost_program_options.a
tests/dc_fiber_consensus_test: ../deps/local/lib/libboost_system.a
tests/dc_fiber_consensus_test: ../deps/local/lib/libboost_iostreams.a
tests/dc_fiber_consensus_test: ../deps/local/lib/libboost_context.a
tests/dc_fiber_consensus_test: ../deps/local/lib/libboost_date_time.a
tests/dc_fiber_consensus_test: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi_cxx.so
tests/dc_fiber_consensus_test: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
tests/dc_fiber_consensus_test: /usr/lib/jvm/default-java/lib/server/libjvm.so
tests/dc_fiber_consensus_test: tests/CMakeFiles/dc_fiber_consensus_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/PowerGraph/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable dc_fiber_consensus_test"
	cd /root/PowerGraph/release/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/dc_fiber_consensus_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/dc_fiber_consensus_test.dir/build: tests/dc_fiber_consensus_test

.PHONY : tests/CMakeFiles/dc_fiber_consensus_test.dir/build

tests/CMakeFiles/dc_fiber_consensus_test.dir/clean:
	cd /root/PowerGraph/release/tests && $(CMAKE_COMMAND) -P CMakeFiles/dc_fiber_consensus_test.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/dc_fiber_consensus_test.dir/clean

tests/CMakeFiles/dc_fiber_consensus_test.dir/depend:
	cd /root/PowerGraph/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/PowerGraph /root/PowerGraph/tests /root/PowerGraph/release /root/PowerGraph/release/tests /root/PowerGraph/release/tests/CMakeFiles/dc_fiber_consensus_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/dc_fiber_consensus_test.dir/depend

