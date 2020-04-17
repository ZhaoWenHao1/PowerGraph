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
include toolkits/collaborative_filtering/CMakeFiles/adpredictor.dir/depend.make

# Include the progress variables for this target.
include toolkits/collaborative_filtering/CMakeFiles/adpredictor.dir/progress.make

# Include the compile flags for this target's objects.
include toolkits/collaborative_filtering/CMakeFiles/adpredictor.dir/flags.make

toolkits/collaborative_filtering/CMakeFiles/adpredictor.dir/adpredictor.cpp.o: toolkits/collaborative_filtering/CMakeFiles/adpredictor.dir/flags.make
toolkits/collaborative_filtering/CMakeFiles/adpredictor.dir/adpredictor.cpp.o: ../toolkits/collaborative_filtering/adpredictor.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/PowerGraph/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object toolkits/collaborative_filtering/CMakeFiles/adpredictor.dir/adpredictor.cpp.o"
	cd /root/PowerGraph/release/toolkits/collaborative_filtering && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/adpredictor.dir/adpredictor.cpp.o -c /root/PowerGraph/toolkits/collaborative_filtering/adpredictor.cpp

toolkits/collaborative_filtering/CMakeFiles/adpredictor.dir/adpredictor.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/adpredictor.dir/adpredictor.cpp.i"
	cd /root/PowerGraph/release/toolkits/collaborative_filtering && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/PowerGraph/toolkits/collaborative_filtering/adpredictor.cpp > CMakeFiles/adpredictor.dir/adpredictor.cpp.i

toolkits/collaborative_filtering/CMakeFiles/adpredictor.dir/adpredictor.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/adpredictor.dir/adpredictor.cpp.s"
	cd /root/PowerGraph/release/toolkits/collaborative_filtering && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/PowerGraph/toolkits/collaborative_filtering/adpredictor.cpp -o CMakeFiles/adpredictor.dir/adpredictor.cpp.s

# Object files for target adpredictor
adpredictor_OBJECTS = \
"CMakeFiles/adpredictor.dir/adpredictor.cpp.o"

# External object files for target adpredictor
adpredictor_EXTERNAL_OBJECTS =

toolkits/collaborative_filtering/adpredictor: toolkits/collaborative_filtering/CMakeFiles/adpredictor.dir/adpredictor.cpp.o
toolkits/collaborative_filtering/adpredictor: toolkits/collaborative_filtering/CMakeFiles/adpredictor.dir/build.make
toolkits/collaborative_filtering/adpredictor: src/graphlab/libgraphlab.a
toolkits/collaborative_filtering/adpredictor: ../deps/local/lib/libboost_filesystem.a
toolkits/collaborative_filtering/adpredictor: ../deps/local/lib/libboost_program_options.a
toolkits/collaborative_filtering/adpredictor: ../deps/local/lib/libboost_system.a
toolkits/collaborative_filtering/adpredictor: ../deps/local/lib/libboost_iostreams.a
toolkits/collaborative_filtering/adpredictor: ../deps/local/lib/libboost_context.a
toolkits/collaborative_filtering/adpredictor: ../deps/local/lib/libboost_date_time.a
toolkits/collaborative_filtering/adpredictor: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi_cxx.so
toolkits/collaborative_filtering/adpredictor: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
toolkits/collaborative_filtering/adpredictor: /usr/lib/jvm/default-java/lib/server/libjvm.so
toolkits/collaborative_filtering/adpredictor: ../deps/local/lib/libboost_filesystem.a
toolkits/collaborative_filtering/adpredictor: ../deps/local/lib/libboost_program_options.a
toolkits/collaborative_filtering/adpredictor: ../deps/local/lib/libboost_system.a
toolkits/collaborative_filtering/adpredictor: ../deps/local/lib/libboost_iostreams.a
toolkits/collaborative_filtering/adpredictor: ../deps/local/lib/libboost_context.a
toolkits/collaborative_filtering/adpredictor: ../deps/local/lib/libboost_date_time.a
toolkits/collaborative_filtering/adpredictor: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi_cxx.so
toolkits/collaborative_filtering/adpredictor: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
toolkits/collaborative_filtering/adpredictor: /usr/lib/jvm/default-java/lib/server/libjvm.so
toolkits/collaborative_filtering/adpredictor: toolkits/collaborative_filtering/CMakeFiles/adpredictor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/PowerGraph/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable adpredictor"
	cd /root/PowerGraph/release/toolkits/collaborative_filtering && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/adpredictor.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
toolkits/collaborative_filtering/CMakeFiles/adpredictor.dir/build: toolkits/collaborative_filtering/adpredictor

.PHONY : toolkits/collaborative_filtering/CMakeFiles/adpredictor.dir/build

toolkits/collaborative_filtering/CMakeFiles/adpredictor.dir/clean:
	cd /root/PowerGraph/release/toolkits/collaborative_filtering && $(CMAKE_COMMAND) -P CMakeFiles/adpredictor.dir/cmake_clean.cmake
.PHONY : toolkits/collaborative_filtering/CMakeFiles/adpredictor.dir/clean

toolkits/collaborative_filtering/CMakeFiles/adpredictor.dir/depend:
	cd /root/PowerGraph/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/PowerGraph /root/PowerGraph/toolkits/collaborative_filtering /root/PowerGraph/release /root/PowerGraph/release/toolkits/collaborative_filtering /root/PowerGraph/release/toolkits/collaborative_filtering/CMakeFiles/adpredictor.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : toolkits/collaborative_filtering/CMakeFiles/adpredictor.dir/depend

