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

# Utility rule file for hadoop.

# Include the progress variables for this target.
include CMakeFiles/hadoop.dir/progress.make

CMakeFiles/hadoop: CMakeFiles/hadoop-complete


CMakeFiles/hadoop-complete: ../deps/hadoop/src/hadoop-stamp/hadoop-install
CMakeFiles/hadoop-complete: ../deps/hadoop/src/hadoop-stamp/hadoop-mkdir
CMakeFiles/hadoop-complete: ../deps/hadoop/src/hadoop-stamp/hadoop-download
CMakeFiles/hadoop-complete: ../deps/hadoop/src/hadoop-stamp/hadoop-update
CMakeFiles/hadoop-complete: ../deps/hadoop/src/hadoop-stamp/hadoop-patch
CMakeFiles/hadoop-complete: ../deps/hadoop/src/hadoop-stamp/hadoop-configure
CMakeFiles/hadoop-complete: ../deps/hadoop/src/hadoop-stamp/hadoop-build
CMakeFiles/hadoop-complete: ../deps/hadoop/src/hadoop-stamp/hadoop-install
CMakeFiles/hadoop-complete: ../deps/hadoop/src/hadoop-stamp/hadoop-test
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/PowerGraph/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'hadoop'"
	/usr/local/bin/cmake -E make_directory /root/PowerGraph/release/CMakeFiles
	/usr/local/bin/cmake -E touch /root/PowerGraph/release/CMakeFiles/hadoop-complete
	/usr/local/bin/cmake -E touch /root/PowerGraph/deps/hadoop/src/hadoop-stamp/hadoop-done

../deps/hadoop/src/hadoop-stamp/hadoop-install: ../deps/hadoop/src/hadoop-stamp/hadoop-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/PowerGraph/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing install step for 'hadoop'"
	cd /root/PowerGraph/deps/hadoop/src/hadoop && $(MAKE) install
	cd /root/PowerGraph/deps/hadoop/src/hadoop && /usr/local/bin/cmake -E touch /root/PowerGraph/deps/hadoop/src/hadoop-stamp/hadoop-install

../deps/hadoop/src/hadoop-stamp/hadoop-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/PowerGraph/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'hadoop'"
	/usr/local/bin/cmake -E make_directory /root/PowerGraph/deps/hadoop/src/hadoop
	/usr/local/bin/cmake -E make_directory /root/PowerGraph/deps/hadoop/src/hadoop
	/usr/local/bin/cmake -E make_directory /root/PowerGraph/deps/local
	/usr/local/bin/cmake -E make_directory /root/PowerGraph/deps/hadoop/tmp
	/usr/local/bin/cmake -E make_directory /root/PowerGraph/deps/hadoop/src/hadoop-stamp
	/usr/local/bin/cmake -E make_directory /root/PowerGraph/deps/hadoop/src
	/usr/local/bin/cmake -E touch /root/PowerGraph/deps/hadoop/src/hadoop-stamp/hadoop-mkdir

../deps/hadoop/src/hadoop-stamp/hadoop-download: ../deps/hadoop/src/hadoop-stamp/hadoop-urlinfo.txt
../deps/hadoop/src/hadoop-stamp/hadoop-download: ../deps/hadoop/src/hadoop-stamp/hadoop-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/PowerGraph/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (download, verify and extract) for 'hadoop'"
	cd /root/PowerGraph/deps/hadoop/src && /usr/local/bin/cmake -P /root/PowerGraph/deps/hadoop/src/hadoop-stamp/download-hadoop.cmake
	cd /root/PowerGraph/deps/hadoop/src && /usr/local/bin/cmake -P /root/PowerGraph/deps/hadoop/src/hadoop-stamp/verify-hadoop.cmake
	cd /root/PowerGraph/deps/hadoop/src && /usr/local/bin/cmake -P /root/PowerGraph/deps/hadoop/src/hadoop-stamp/extract-hadoop.cmake
	cd /root/PowerGraph/deps/hadoop/src && /usr/local/bin/cmake -E touch /root/PowerGraph/deps/hadoop/src/hadoop-stamp/hadoop-download

../deps/hadoop/src/hadoop-stamp/hadoop-update: ../deps/hadoop/src/hadoop-stamp/hadoop-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/PowerGraph/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Performing update step for 'hadoop'"
	cd /root/PowerGraph/deps/hadoop/src/hadoop && chmod +x /root/PowerGraph/deps/hadoop/src/hadoop/src/c++/libhdfs/install-sh /root/PowerGraph/deps/hadoop/src/hadoop/src/c++/libhdfs/configure

../deps/hadoop/src/hadoop-stamp/hadoop-patch: ../deps/hadoop/src/hadoop-stamp/hadoop-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/PowerGraph/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Performing patch step for 'hadoop'"
	cd /root/PowerGraph/deps/hadoop/src/hadoop && patch -N -p1 -i /root/PowerGraph/patches/libhdfs.patch || true
	cd /root/PowerGraph/deps/hadoop/src/hadoop && /usr/local/bin/cmake -E touch /root/PowerGraph/deps/hadoop/src/hadoop-stamp/hadoop-patch

../deps/hadoop/src/hadoop-stamp/hadoop-configure: ../deps/hadoop/tmp/hadoop-cfgcmd.txt
../deps/hadoop/src/hadoop-stamp/hadoop-configure: ../deps/hadoop/src/hadoop-stamp/hadoop-update
../deps/hadoop/src/hadoop-stamp/hadoop-configure: ../deps/hadoop/src/hadoop-stamp/hadoop-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/PowerGraph/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Performing configure step for 'hadoop'"
	cd /root/PowerGraph/deps/hadoop/src/hadoop && /root/PowerGraph/deps/hadoop/src/hadoop/src/c++/libhdfs/configure JVM_ARCH=tune=generic --prefix=/root/PowerGraph/deps/local --with-java=/usr/lib/jvm/default-java --enable-shared=no --enable-static=yes
	cd /root/PowerGraph/deps/hadoop/src/hadoop && /usr/local/bin/cmake -E touch /root/PowerGraph/deps/hadoop/src/hadoop-stamp/hadoop-configure

../deps/hadoop/src/hadoop-stamp/hadoop-build: ../deps/hadoop/src/hadoop-stamp/hadoop-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/PowerGraph/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing build step for 'hadoop'"
	cd /root/PowerGraph/deps/hadoop/src/hadoop && $(MAKE)
	cd /root/PowerGraph/deps/hadoop/src/hadoop && /usr/local/bin/cmake -E touch /root/PowerGraph/deps/hadoop/src/hadoop-stamp/hadoop-build

../deps/hadoop/src/hadoop-stamp/hadoop-test: ../deps/hadoop/src/hadoop-stamp/hadoop-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/PowerGraph/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Performing test step for 'hadoop'"
	cd /root/PowerGraph/deps/hadoop/src/hadoop && bash -c "mkdir -p /root/PowerGraph/deps/local/include && cp /root/PowerGraph/deps/hadoop/src/hadoop/src/c++/libhdfs/hdfs.h /root/PowerGraph/deps/local/include"
	cd /root/PowerGraph/deps/hadoop/src/hadoop && /usr/local/bin/cmake -E touch /root/PowerGraph/deps/hadoop/src/hadoop-stamp/hadoop-test

hadoop: CMakeFiles/hadoop
hadoop: CMakeFiles/hadoop-complete
hadoop: ../deps/hadoop/src/hadoop-stamp/hadoop-install
hadoop: ../deps/hadoop/src/hadoop-stamp/hadoop-mkdir
hadoop: ../deps/hadoop/src/hadoop-stamp/hadoop-download
hadoop: ../deps/hadoop/src/hadoop-stamp/hadoop-update
hadoop: ../deps/hadoop/src/hadoop-stamp/hadoop-patch
hadoop: ../deps/hadoop/src/hadoop-stamp/hadoop-configure
hadoop: ../deps/hadoop/src/hadoop-stamp/hadoop-build
hadoop: ../deps/hadoop/src/hadoop-stamp/hadoop-test
hadoop: CMakeFiles/hadoop.dir/build.make

.PHONY : hadoop

# Rule to build all files generated by this target.
CMakeFiles/hadoop.dir/build: hadoop

.PHONY : CMakeFiles/hadoop.dir/build

CMakeFiles/hadoop.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/hadoop.dir/cmake_clean.cmake
.PHONY : CMakeFiles/hadoop.dir/clean

CMakeFiles/hadoop.dir/depend:
	cd /root/PowerGraph/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/PowerGraph /root/PowerGraph /root/PowerGraph/release /root/PowerGraph/release /root/PowerGraph/release/CMakeFiles/hadoop.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/hadoop.dir/depend

