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
include demoapps/rpc/CMakeFiles/rpc_example8.dir/depend.make

# Include the progress variables for this target.
include demoapps/rpc/CMakeFiles/rpc_example8.dir/progress.make

# Include the compile flags for this target's objects.
include demoapps/rpc/CMakeFiles/rpc_example8.dir/flags.make

demoapps/rpc/CMakeFiles/rpc_example8.dir/rpc_example8.cpp.o: demoapps/rpc/CMakeFiles/rpc_example8.dir/flags.make
demoapps/rpc/CMakeFiles/rpc_example8.dir/rpc_example8.cpp.o: ../demoapps/rpc/rpc_example8.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/PowerGraph/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object demoapps/rpc/CMakeFiles/rpc_example8.dir/rpc_example8.cpp.o"
	cd /root/PowerGraph/release/demoapps/rpc && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/rpc_example8.dir/rpc_example8.cpp.o -c /root/PowerGraph/demoapps/rpc/rpc_example8.cpp

demoapps/rpc/CMakeFiles/rpc_example8.dir/rpc_example8.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rpc_example8.dir/rpc_example8.cpp.i"
	cd /root/PowerGraph/release/demoapps/rpc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/PowerGraph/demoapps/rpc/rpc_example8.cpp > CMakeFiles/rpc_example8.dir/rpc_example8.cpp.i

demoapps/rpc/CMakeFiles/rpc_example8.dir/rpc_example8.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rpc_example8.dir/rpc_example8.cpp.s"
	cd /root/PowerGraph/release/demoapps/rpc && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/PowerGraph/demoapps/rpc/rpc_example8.cpp -o CMakeFiles/rpc_example8.dir/rpc_example8.cpp.s

# Object files for target rpc_example8
rpc_example8_OBJECTS = \
"CMakeFiles/rpc_example8.dir/rpc_example8.cpp.o"

# External object files for target rpc_example8
rpc_example8_EXTERNAL_OBJECTS =

demoapps/rpc/rpc_example8: demoapps/rpc/CMakeFiles/rpc_example8.dir/rpc_example8.cpp.o
demoapps/rpc/rpc_example8: demoapps/rpc/CMakeFiles/rpc_example8.dir/build.make
demoapps/rpc/rpc_example8: src/graphlab/libgraphlab.a
demoapps/rpc/rpc_example8: ../deps/local/lib/libboost_filesystem.a
demoapps/rpc/rpc_example8: ../deps/local/lib/libboost_program_options.a
demoapps/rpc/rpc_example8: ../deps/local/lib/libboost_system.a
demoapps/rpc/rpc_example8: ../deps/local/lib/libboost_iostreams.a
demoapps/rpc/rpc_example8: ../deps/local/lib/libboost_context.a
demoapps/rpc/rpc_example8: ../deps/local/lib/libboost_date_time.a
demoapps/rpc/rpc_example8: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi_cxx.so
demoapps/rpc/rpc_example8: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
demoapps/rpc/rpc_example8: /usr/lib/jvm/default-java/lib/server/libjvm.so
demoapps/rpc/rpc_example8: ../deps/local/lib/libboost_filesystem.a
demoapps/rpc/rpc_example8: ../deps/local/lib/libboost_program_options.a
demoapps/rpc/rpc_example8: ../deps/local/lib/libboost_system.a
demoapps/rpc/rpc_example8: ../deps/local/lib/libboost_iostreams.a
demoapps/rpc/rpc_example8: ../deps/local/lib/libboost_context.a
demoapps/rpc/rpc_example8: ../deps/local/lib/libboost_date_time.a
demoapps/rpc/rpc_example8: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi_cxx.so
demoapps/rpc/rpc_example8: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
demoapps/rpc/rpc_example8: /usr/lib/jvm/default-java/lib/server/libjvm.so
demoapps/rpc/rpc_example8: demoapps/rpc/CMakeFiles/rpc_example8.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/PowerGraph/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable rpc_example8"
	cd /root/PowerGraph/release/demoapps/rpc && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/rpc_example8.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
demoapps/rpc/CMakeFiles/rpc_example8.dir/build: demoapps/rpc/rpc_example8

.PHONY : demoapps/rpc/CMakeFiles/rpc_example8.dir/build

demoapps/rpc/CMakeFiles/rpc_example8.dir/clean:
	cd /root/PowerGraph/release/demoapps/rpc && $(CMAKE_COMMAND) -P CMakeFiles/rpc_example8.dir/cmake_clean.cmake
.PHONY : demoapps/rpc/CMakeFiles/rpc_example8.dir/clean

demoapps/rpc/CMakeFiles/rpc_example8.dir/depend:
	cd /root/PowerGraph/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/PowerGraph /root/PowerGraph/demoapps/rpc /root/PowerGraph/release /root/PowerGraph/release/demoapps/rpc /root/PowerGraph/release/demoapps/rpc/CMakeFiles/rpc_example8.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : demoapps/rpc/CMakeFiles/rpc_example8.dir/depend

