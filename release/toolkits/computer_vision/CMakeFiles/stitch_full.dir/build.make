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
include toolkits/computer_vision/CMakeFiles/stitch_full.dir/depend.make

# Include the progress variables for this target.
include toolkits/computer_vision/CMakeFiles/stitch_full.dir/progress.make

# Include the compile flags for this target's objects.
include toolkits/computer_vision/CMakeFiles/stitch_full.dir/flags.make

toolkits/computer_vision/CMakeFiles/stitch_full.dir/stitch_full_main.cpp.o: toolkits/computer_vision/CMakeFiles/stitch_full.dir/flags.make
toolkits/computer_vision/CMakeFiles/stitch_full.dir/stitch_full_main.cpp.o: ../toolkits/computer_vision/stitch_full_main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/PowerGraph/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object toolkits/computer_vision/CMakeFiles/stitch_full.dir/stitch_full_main.cpp.o"
	cd /root/PowerGraph/release/toolkits/computer_vision && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/stitch_full.dir/stitch_full_main.cpp.o -c /root/PowerGraph/toolkits/computer_vision/stitch_full_main.cpp

toolkits/computer_vision/CMakeFiles/stitch_full.dir/stitch_full_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/stitch_full.dir/stitch_full_main.cpp.i"
	cd /root/PowerGraph/release/toolkits/computer_vision && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/PowerGraph/toolkits/computer_vision/stitch_full_main.cpp > CMakeFiles/stitch_full.dir/stitch_full_main.cpp.i

toolkits/computer_vision/CMakeFiles/stitch_full.dir/stitch_full_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/stitch_full.dir/stitch_full_main.cpp.s"
	cd /root/PowerGraph/release/toolkits/computer_vision && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/PowerGraph/toolkits/computer_vision/stitch_full_main.cpp -o CMakeFiles/stitch_full.dir/stitch_full_main.cpp.s

# Object files for target stitch_full
stitch_full_OBJECTS = \
"CMakeFiles/stitch_full.dir/stitch_full_main.cpp.o"

# External object files for target stitch_full
stitch_full_EXTERNAL_OBJECTS =

toolkits/computer_vision/stitch_full: toolkits/computer_vision/CMakeFiles/stitch_full.dir/stitch_full_main.cpp.o
toolkits/computer_vision/stitch_full: toolkits/computer_vision/CMakeFiles/stitch_full.dir/build.make
toolkits/computer_vision/stitch_full: src/graphlab/libgraphlab.a
toolkits/computer_vision/stitch_full: ../deps/local/lib/libboost_filesystem.a
toolkits/computer_vision/stitch_full: ../deps/local/lib/libboost_program_options.a
toolkits/computer_vision/stitch_full: ../deps/local/lib/libboost_system.a
toolkits/computer_vision/stitch_full: ../deps/local/lib/libboost_iostreams.a
toolkits/computer_vision/stitch_full: ../deps/local/lib/libboost_context.a
toolkits/computer_vision/stitch_full: ../deps/local/lib/libboost_date_time.a
toolkits/computer_vision/stitch_full: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi_cxx.so
toolkits/computer_vision/stitch_full: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
toolkits/computer_vision/stitch_full: /usr/lib/jvm/default-java/lib/server/libjvm.so
toolkits/computer_vision/stitch_full: ../deps/local/lib/libboost_filesystem.a
toolkits/computer_vision/stitch_full: ../deps/local/lib/libboost_program_options.a
toolkits/computer_vision/stitch_full: ../deps/local/lib/libboost_system.a
toolkits/computer_vision/stitch_full: ../deps/local/lib/libboost_iostreams.a
toolkits/computer_vision/stitch_full: ../deps/local/lib/libboost_context.a
toolkits/computer_vision/stitch_full: ../deps/local/lib/libboost_date_time.a
toolkits/computer_vision/stitch_full: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi_cxx.so
toolkits/computer_vision/stitch_full: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
toolkits/computer_vision/stitch_full: /usr/lib/jvm/default-java/lib/server/libjvm.so
toolkits/computer_vision/stitch_full: toolkits/computer_vision/CMakeFiles/stitch_full.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/PowerGraph/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable stitch_full"
	cd /root/PowerGraph/release/toolkits/computer_vision && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/stitch_full.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
toolkits/computer_vision/CMakeFiles/stitch_full.dir/build: toolkits/computer_vision/stitch_full

.PHONY : toolkits/computer_vision/CMakeFiles/stitch_full.dir/build

toolkits/computer_vision/CMakeFiles/stitch_full.dir/clean:
	cd /root/PowerGraph/release/toolkits/computer_vision && $(CMAKE_COMMAND) -P CMakeFiles/stitch_full.dir/cmake_clean.cmake
.PHONY : toolkits/computer_vision/CMakeFiles/stitch_full.dir/clean

toolkits/computer_vision/CMakeFiles/stitch_full.dir/depend:
	cd /root/PowerGraph/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/PowerGraph /root/PowerGraph/toolkits/computer_vision /root/PowerGraph/release /root/PowerGraph/release/toolkits/computer_vision /root/PowerGraph/release/toolkits/computer_vision/CMakeFiles/stitch_full.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : toolkits/computer_vision/CMakeFiles/stitch_full.dir/depend

