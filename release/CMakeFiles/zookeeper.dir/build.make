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

# Utility rule file for zookeeper.

# Include the progress variables for this target.
include CMakeFiles/zookeeper.dir/progress.make

CMakeFiles/zookeeper: CMakeFiles/zookeeper-complete


CMakeFiles/zookeeper-complete: ../deps/zookeeper/src/zookeeper-stamp/zookeeper-install
CMakeFiles/zookeeper-complete: ../deps/zookeeper/src/zookeeper-stamp/zookeeper-mkdir
CMakeFiles/zookeeper-complete: ../deps/zookeeper/src/zookeeper-stamp/zookeeper-download
CMakeFiles/zookeeper-complete: ../deps/zookeeper/src/zookeeper-stamp/zookeeper-update
CMakeFiles/zookeeper-complete: ../deps/zookeeper/src/zookeeper-stamp/zookeeper-patch
CMakeFiles/zookeeper-complete: ../deps/zookeeper/src/zookeeper-stamp/zookeeper-configure
CMakeFiles/zookeeper-complete: ../deps/zookeeper/src/zookeeper-stamp/zookeeper-build
CMakeFiles/zookeeper-complete: ../deps/zookeeper/src/zookeeper-stamp/zookeeper-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/PowerGraph/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'zookeeper'"
	/usr/local/bin/cmake -E make_directory /root/PowerGraph/release/CMakeFiles
	/usr/local/bin/cmake -E touch /root/PowerGraph/release/CMakeFiles/zookeeper-complete
	/usr/local/bin/cmake -E touch /root/PowerGraph/deps/zookeeper/src/zookeeper-stamp/zookeeper-done

../deps/zookeeper/src/zookeeper-stamp/zookeeper-install: ../deps/zookeeper/src/zookeeper-stamp/zookeeper-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/PowerGraph/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing install step for 'zookeeper'"
	cd /root/PowerGraph/deps/zookeeper/src/zookeeper && $(MAKE) install
	cd /root/PowerGraph/deps/zookeeper/src/zookeeper && /usr/local/bin/cmake -E touch /root/PowerGraph/deps/zookeeper/src/zookeeper-stamp/zookeeper-install

../deps/zookeeper/src/zookeeper-stamp/zookeeper-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/PowerGraph/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'zookeeper'"
	/usr/local/bin/cmake -E make_directory /root/PowerGraph/deps/zookeeper/src/zookeeper
	/usr/local/bin/cmake -E make_directory /root/PowerGraph/deps/zookeeper/src/zookeeper
	/usr/local/bin/cmake -E make_directory /root/PowerGraph/deps/local
	/usr/local/bin/cmake -E make_directory /root/PowerGraph/deps/zookeeper/tmp
	/usr/local/bin/cmake -E make_directory /root/PowerGraph/deps/zookeeper/src/zookeeper-stamp
	/usr/local/bin/cmake -E make_directory /root/PowerGraph/deps/zookeeper/src
	/usr/local/bin/cmake -E touch /root/PowerGraph/deps/zookeeper/src/zookeeper-stamp/zookeeper-mkdir

../deps/zookeeper/src/zookeeper-stamp/zookeeper-download: ../deps/zookeeper/src/zookeeper-stamp/zookeeper-urlinfo.txt
../deps/zookeeper/src/zookeeper-stamp/zookeeper-download: ../deps/zookeeper/src/zookeeper-stamp/zookeeper-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/PowerGraph/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (download, verify and extract) for 'zookeeper'"
	cd /root/PowerGraph/deps/zookeeper/src && /usr/local/bin/cmake -P /root/PowerGraph/deps/zookeeper/src/zookeeper-stamp/download-zookeeper.cmake
	cd /root/PowerGraph/deps/zookeeper/src && /usr/local/bin/cmake -P /root/PowerGraph/deps/zookeeper/src/zookeeper-stamp/verify-zookeeper.cmake
	cd /root/PowerGraph/deps/zookeeper/src && /usr/local/bin/cmake -P /root/PowerGraph/deps/zookeeper/src/zookeeper-stamp/extract-zookeeper.cmake
	cd /root/PowerGraph/deps/zookeeper/src && /usr/local/bin/cmake -E touch /root/PowerGraph/deps/zookeeper/src/zookeeper-stamp/zookeeper-download

../deps/zookeeper/src/zookeeper-stamp/zookeeper-update: ../deps/zookeeper/src/zookeeper-stamp/zookeeper-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/PowerGraph/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No update step for 'zookeeper'"
	/usr/local/bin/cmake -E echo_append
	/usr/local/bin/cmake -E touch /root/PowerGraph/deps/zookeeper/src/zookeeper-stamp/zookeeper-update

../deps/zookeeper/src/zookeeper-stamp/zookeeper-patch: ../deps/zookeeper/src/zookeeper-stamp/zookeeper-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/PowerGraph/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Performing patch step for 'zookeeper'"
	cd /root/PowerGraph/deps/zookeeper/src/zookeeper && /usr/local/bin/cmake -E copy_directory /root/PowerGraph/patches/zookeeper/ /root/PowerGraph/deps/zookeeper/src/zookeeper
	cd /root/PowerGraph/deps/zookeeper/src/zookeeper && /usr/local/bin/cmake -E touch /root/PowerGraph/deps/zookeeper/src/zookeeper-stamp/zookeeper-patch

../deps/zookeeper/src/zookeeper-stamp/zookeeper-configure: ../deps/zookeeper/tmp/zookeeper-cfgcmd.txt
../deps/zookeeper/src/zookeeper-stamp/zookeeper-configure: ../deps/zookeeper/src/zookeeper-stamp/zookeeper-update
../deps/zookeeper/src/zookeeper-stamp/zookeeper-configure: ../deps/zookeeper/src/zookeeper-stamp/zookeeper-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/PowerGraph/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Performing configure step for 'zookeeper'"
	cd /root/PowerGraph/deps/zookeeper/src/zookeeper && ./configure --prefix=/root/PowerGraph/deps/local --disable-shared
	cd /root/PowerGraph/deps/zookeeper/src/zookeeper && /usr/local/bin/cmake -E touch /root/PowerGraph/deps/zookeeper/src/zookeeper-stamp/zookeeper-configure

../deps/zookeeper/src/zookeeper-stamp/zookeeper-build: ../deps/zookeeper/src/zookeeper-stamp/zookeeper-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/PowerGraph/release/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing build step for 'zookeeper'"
	cd /root/PowerGraph/deps/zookeeper/src/zookeeper && $(MAKE)
	cd /root/PowerGraph/deps/zookeeper/src/zookeeper && /usr/local/bin/cmake -E touch /root/PowerGraph/deps/zookeeper/src/zookeeper-stamp/zookeeper-build

zookeeper: CMakeFiles/zookeeper
zookeeper: CMakeFiles/zookeeper-complete
zookeeper: ../deps/zookeeper/src/zookeeper-stamp/zookeeper-install
zookeeper: ../deps/zookeeper/src/zookeeper-stamp/zookeeper-mkdir
zookeeper: ../deps/zookeeper/src/zookeeper-stamp/zookeeper-download
zookeeper: ../deps/zookeeper/src/zookeeper-stamp/zookeeper-update
zookeeper: ../deps/zookeeper/src/zookeeper-stamp/zookeeper-patch
zookeeper: ../deps/zookeeper/src/zookeeper-stamp/zookeeper-configure
zookeeper: ../deps/zookeeper/src/zookeeper-stamp/zookeeper-build
zookeeper: CMakeFiles/zookeeper.dir/build.make

.PHONY : zookeeper

# Rule to build all files generated by this target.
CMakeFiles/zookeeper.dir/build: zookeeper

.PHONY : CMakeFiles/zookeeper.dir/build

CMakeFiles/zookeeper.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/zookeeper.dir/cmake_clean.cmake
.PHONY : CMakeFiles/zookeeper.dir/clean

CMakeFiles/zookeeper.dir/depend:
	cd /root/PowerGraph/release && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/PowerGraph /root/PowerGraph /root/PowerGraph/release /root/PowerGraph/release /root/PowerGraph/release/CMakeFiles/zookeeper.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/zookeeper.dir/depend

