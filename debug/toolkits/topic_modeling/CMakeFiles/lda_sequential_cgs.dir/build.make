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
CMAKE_BINARY_DIR = /root/PowerGraph/debug

# Include any dependencies generated for this target.
include toolkits/topic_modeling/CMakeFiles/lda_sequential_cgs.dir/depend.make

# Include the progress variables for this target.
include toolkits/topic_modeling/CMakeFiles/lda_sequential_cgs.dir/progress.make

# Include the compile flags for this target's objects.
include toolkits/topic_modeling/CMakeFiles/lda_sequential_cgs.dir/flags.make

toolkits/topic_modeling/CMakeFiles/lda_sequential_cgs.dir/lda_sequential_cgs.cpp.o: toolkits/topic_modeling/CMakeFiles/lda_sequential_cgs.dir/flags.make
toolkits/topic_modeling/CMakeFiles/lda_sequential_cgs.dir/lda_sequential_cgs.cpp.o: ../toolkits/topic_modeling/lda_sequential_cgs.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/root/PowerGraph/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object toolkits/topic_modeling/CMakeFiles/lda_sequential_cgs.dir/lda_sequential_cgs.cpp.o"
	cd /root/PowerGraph/debug/toolkits/topic_modeling && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/lda_sequential_cgs.dir/lda_sequential_cgs.cpp.o -c /root/PowerGraph/toolkits/topic_modeling/lda_sequential_cgs.cpp

toolkits/topic_modeling/CMakeFiles/lda_sequential_cgs.dir/lda_sequential_cgs.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/lda_sequential_cgs.dir/lda_sequential_cgs.cpp.i"
	cd /root/PowerGraph/debug/toolkits/topic_modeling && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /root/PowerGraph/toolkits/topic_modeling/lda_sequential_cgs.cpp > CMakeFiles/lda_sequential_cgs.dir/lda_sequential_cgs.cpp.i

toolkits/topic_modeling/CMakeFiles/lda_sequential_cgs.dir/lda_sequential_cgs.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/lda_sequential_cgs.dir/lda_sequential_cgs.cpp.s"
	cd /root/PowerGraph/debug/toolkits/topic_modeling && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /root/PowerGraph/toolkits/topic_modeling/lda_sequential_cgs.cpp -o CMakeFiles/lda_sequential_cgs.dir/lda_sequential_cgs.cpp.s

# Object files for target lda_sequential_cgs
lda_sequential_cgs_OBJECTS = \
"CMakeFiles/lda_sequential_cgs.dir/lda_sequential_cgs.cpp.o"

# External object files for target lda_sequential_cgs
lda_sequential_cgs_EXTERNAL_OBJECTS =

toolkits/topic_modeling/lda_sequential_cgs: toolkits/topic_modeling/CMakeFiles/lda_sequential_cgs.dir/lda_sequential_cgs.cpp.o
toolkits/topic_modeling/lda_sequential_cgs: toolkits/topic_modeling/CMakeFiles/lda_sequential_cgs.dir/build.make
toolkits/topic_modeling/lda_sequential_cgs: src/graphlab/libgraphlab.a
toolkits/topic_modeling/lda_sequential_cgs: ../deps/local/lib/libboost_filesystem.a
toolkits/topic_modeling/lda_sequential_cgs: ../deps/local/lib/libboost_program_options.a
toolkits/topic_modeling/lda_sequential_cgs: ../deps/local/lib/libboost_system.a
toolkits/topic_modeling/lda_sequential_cgs: ../deps/local/lib/libboost_iostreams.a
toolkits/topic_modeling/lda_sequential_cgs: ../deps/local/lib/libboost_context.a
toolkits/topic_modeling/lda_sequential_cgs: ../deps/local/lib/libboost_date_time.a
toolkits/topic_modeling/lda_sequential_cgs: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi_cxx.so
toolkits/topic_modeling/lda_sequential_cgs: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
toolkits/topic_modeling/lda_sequential_cgs: /usr/lib/jvm/default-java/lib/server/libjvm.so
toolkits/topic_modeling/lda_sequential_cgs: ../deps/local/lib/libboost_filesystem.a
toolkits/topic_modeling/lda_sequential_cgs: ../deps/local/lib/libboost_program_options.a
toolkits/topic_modeling/lda_sequential_cgs: ../deps/local/lib/libboost_system.a
toolkits/topic_modeling/lda_sequential_cgs: ../deps/local/lib/libboost_iostreams.a
toolkits/topic_modeling/lda_sequential_cgs: ../deps/local/lib/libboost_context.a
toolkits/topic_modeling/lda_sequential_cgs: ../deps/local/lib/libboost_date_time.a
toolkits/topic_modeling/lda_sequential_cgs: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi_cxx.so
toolkits/topic_modeling/lda_sequential_cgs: /usr/lib/x86_64-linux-gnu/openmpi/lib/libmpi.so
toolkits/topic_modeling/lda_sequential_cgs: /usr/lib/jvm/default-java/lib/server/libjvm.so
toolkits/topic_modeling/lda_sequential_cgs: toolkits/topic_modeling/CMakeFiles/lda_sequential_cgs.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/root/PowerGraph/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable lda_sequential_cgs"
	cd /root/PowerGraph/debug/toolkits/topic_modeling && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/lda_sequential_cgs.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
toolkits/topic_modeling/CMakeFiles/lda_sequential_cgs.dir/build: toolkits/topic_modeling/lda_sequential_cgs

.PHONY : toolkits/topic_modeling/CMakeFiles/lda_sequential_cgs.dir/build

toolkits/topic_modeling/CMakeFiles/lda_sequential_cgs.dir/clean:
	cd /root/PowerGraph/debug/toolkits/topic_modeling && $(CMAKE_COMMAND) -P CMakeFiles/lda_sequential_cgs.dir/cmake_clean.cmake
.PHONY : toolkits/topic_modeling/CMakeFiles/lda_sequential_cgs.dir/clean

toolkits/topic_modeling/CMakeFiles/lda_sequential_cgs.dir/depend:
	cd /root/PowerGraph/debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/PowerGraph /root/PowerGraph/toolkits/topic_modeling /root/PowerGraph/debug /root/PowerGraph/debug/toolkits/topic_modeling /root/PowerGraph/debug/toolkits/topic_modeling/CMakeFiles/lda_sequential_cgs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : toolkits/topic_modeling/CMakeFiles/lda_sequential_cgs.dir/depend

