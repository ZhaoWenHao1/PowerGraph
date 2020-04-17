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
include tests/CMakeFiles/random_test.cxxtest.dir/depend.make

# Include the progress variables for this target.
include tests/CMakeFiles/random_test.cxxtest.dir/progress.make

# Include the compile flags for this target's objects.
include tests/CMakeFiles/random_test.cxxtest.dir/flags.make

tests/random_test.cxx.cpp: ../tests/random_test.cxx
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/PowerGraph/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Generating random_test.cxx.cpp"
	cd /root/PowerGraph/tests && /usr/bin/python /root/PowerGraph/cxxtest/cxxtestgen --runner=ErrorPrinter -o /root/PowerGraph/release/tests/random_test.cxx.cpp random_test.cxx

tests/CMakeFiles/random_test.cxxtest.dir/random_test.cxx.cpp.o: tests/CMakeFiles/random_test.cxxtest.dir/flags.make
tests/CMakeFiles/random_test.cxxtest.dir/random_test.cxx.cpp.o: tests/random_test.cxx.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/PowerGraph/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tests/CMakeFiles/random_test.cxxtest.dir/random_test.cxx.cpp.o"
	cd /root/PowerGraph/release/tests && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -I/root/PowerGraph/tests -o CMakeFiles/random_test.cxxtest.dir/random_test.cxx.cpp.o -c /root/PowerGraph/release/tests/random_test.cxx.cpp

tests/CMakeFiles/random_test.cxxtest.dir/random_test.cxx.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/random_test.cxxtest.dir/random_test.cxx.cpp.i"
	cd /root/PowerGraph/release/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -I/root/PowerGraph/tests -E /root/PowerGraph/release/tests/random_test.cxx.cpp > CMakeFiles/random_test.cxxtest.dir/random_test.cxx.cpp.i

tests/CMakeFiles/random_test.cxxtest.dir/random_test.cxx.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/random_test.cxxtest.dir/random_test.cxx.cpp.s"
	cd /root/PowerGraph/release/tests && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -I/root/PowerGraph/tests -S /root/PowerGraph/release/tests/random_test.cxx.cpp -o CMakeFiles/random_test.cxxtest.dir/random_test.cxx.cpp.s

# Object files for target random_test.cxxtest
random_test_cxxtest_OBJECTS = \
"CMakeFiles/random_test.cxxtest.dir/random_test.cxx.cpp.o"

# External object files for target random_test.cxxtest
random_test_cxxtest_EXTERNAL_OBJECTS =

tests/random_test.cxxtest: tests/CMakeFiles/random_test.cxxtest.dir/random_test.cxx.cpp.o
tests/random_test.cxxtest: tests/CMakeFiles/random_test.cxxtest.dir/build.make
tests/random_test.cxxtest: src/graphlab/libgraphlab.a
tests/random_test.cxxtest: ../deps/local/lib/libboost_filesystem.a
tests/random_test.cxxtest: ../deps/local/lib/libboost_program_options.a
tests/random_test.cxxtest: ../deps/local/lib/libboost_system.a
tests/random_test.cxxtest: ../deps/local/lib/libboost_iostreams.a
tests/random_test.cxxtest: ../deps/local/lib/libboost_context.a
tests/random_test.cxxtest: ../deps/local/lib/libboost_date_time.a
tests/random_test.cxxtest: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi_cxx.so
tests/random_test.cxxtest: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
tests/random_test.cxxtest: /usr/lib/jvm/default-java/lib/server/libjvm.so
tests/random_test.cxxtest: ../deps/local/lib/libboost_filesystem.a
tests/random_test.cxxtest: ../deps/local/lib/libboost_program_options.a
tests/random_test.cxxtest: ../deps/local/lib/libboost_system.a
tests/random_test.cxxtest: ../deps/local/lib/libboost_iostreams.a
tests/random_test.cxxtest: ../deps/local/lib/libboost_context.a
tests/random_test.cxxtest: ../deps/local/lib/libboost_date_time.a
tests/random_test.cxxtest: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi_cxx.so
tests/random_test.cxxtest: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
tests/random_test.cxxtest: /usr/lib/jvm/default-java/lib/server/libjvm.so
tests/random_test.cxxtest: tests/CMakeFiles/random_test.cxxtest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/PowerGraph/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable random_test.cxxtest"
	cd /root/PowerGraph/release/tests && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/random_test.cxxtest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tests/CMakeFiles/random_test.cxxtest.dir/build: tests/random_test.cxxtest

.PHONY : tests/CMakeFiles/random_test.cxxtest.dir/build

tests/CMakeFiles/random_test.cxxtest.dir/clean:
	cd /root/PowerGraph/release/tests && $(CMAKE_COMMAND) -P CMakeFiles/random_test.cxxtest.dir/cmake_clean.cmake
.PHONY : tests/CMakeFiles/random_test.cxxtest.dir/clean

tests/CMakeFiles/random_test.cxxtest.dir/depend: tests/random_test.cxx.cpp
	cd /root/PowerGraph/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/PowerGraph /root/PowerGraph/tests /root/PowerGraph/release /root/PowerGraph/release/tests /root/PowerGraph/release/tests/CMakeFiles/random_test.cxxtest.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tests/CMakeFiles/random_test.cxxtest.dir/depend

