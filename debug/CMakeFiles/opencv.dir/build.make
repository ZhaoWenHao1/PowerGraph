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

# Utility rule file for opencv.

# Include the progress variables for this target.
include CMakeFiles/opencv.dir/progress.make

CMakeFiles/opencv: CMakeFiles/opencv-complete


CMakeFiles/opencv-complete: ../deps/opencv/src/opencv-stamp/opencv-install
CMakeFiles/opencv-complete: ../deps/opencv/src/opencv-stamp/opencv-mkdir
CMakeFiles/opencv-complete: ../deps/opencv/src/opencv-stamp/opencv-download
CMakeFiles/opencv-complete: ../deps/opencv/src/opencv-stamp/opencv-update
CMakeFiles/opencv-complete: ../deps/opencv/src/opencv-stamp/opencv-patch
CMakeFiles/opencv-complete: ../deps/opencv/src/opencv-stamp/opencv-configure
CMakeFiles/opencv-complete: ../deps/opencv/src/opencv-stamp/opencv-build
CMakeFiles/opencv-complete: ../deps/opencv/src/opencv-stamp/opencv-install
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/PowerGraph/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Completed 'opencv'"
	/usr/local/bin/cmake -E make_directory /root/PowerGraph/debug/CMakeFiles
	/usr/local/bin/cmake -E touch /root/PowerGraph/debug/CMakeFiles/opencv-complete
	/usr/local/bin/cmake -E touch /root/PowerGraph/deps/opencv/src/opencv-stamp/opencv-done

../deps/opencv/src/opencv-stamp/opencv-install: ../deps/opencv/src/opencv-stamp/opencv-build
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/PowerGraph/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Performing install step for 'opencv'"
	cd /root/PowerGraph/deps/opencv/src/opencv-build && $(MAKE) install
	cd /root/PowerGraph/deps/opencv/src/opencv-build && /usr/local/bin/cmake -E touch /root/PowerGraph/deps/opencv/src/opencv-stamp/opencv-install

../deps/opencv/src/opencv-stamp/opencv-mkdir:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/PowerGraph/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Creating directories for 'opencv'"
	/usr/local/bin/cmake -E make_directory /root/PowerGraph/deps/opencv/src/opencv
	/usr/local/bin/cmake -E make_directory /root/PowerGraph/deps/opencv/src/opencv-build
	/usr/local/bin/cmake -E make_directory /root/PowerGraph/deps/local
	/usr/local/bin/cmake -E make_directory /root/PowerGraph/deps/opencv/tmp
	/usr/local/bin/cmake -E make_directory /root/PowerGraph/deps/opencv/src/opencv-stamp
	/usr/local/bin/cmake -E make_directory /root/PowerGraph/deps/opencv/src
	/usr/local/bin/cmake -E touch /root/PowerGraph/deps/opencv/src/opencv-stamp/opencv-mkdir

../deps/opencv/src/opencv-stamp/opencv-download: ../deps/opencv/src/opencv-stamp/opencv-urlinfo.txt
../deps/opencv/src/opencv-stamp/opencv-download: ../deps/opencv/src/opencv-stamp/opencv-mkdir
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/PowerGraph/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Performing download step (download, verify and extract) for 'opencv'"
	cd /root/PowerGraph/deps/opencv/src && /usr/local/bin/cmake -P /root/PowerGraph/deps/opencv/src/opencv-stamp/download-opencv.cmake
	cd /root/PowerGraph/deps/opencv/src && /usr/local/bin/cmake -P /root/PowerGraph/deps/opencv/src/opencv-stamp/verify-opencv.cmake
	cd /root/PowerGraph/deps/opencv/src && /usr/local/bin/cmake -P /root/PowerGraph/deps/opencv/src/opencv-stamp/extract-opencv.cmake
	cd /root/PowerGraph/deps/opencv/src && /usr/local/bin/cmake -E touch /root/PowerGraph/deps/opencv/src/opencv-stamp/opencv-download

../deps/opencv/src/opencv-stamp/opencv-update: ../deps/opencv/src/opencv-stamp/opencv-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/PowerGraph/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "No update step for 'opencv'"
	/usr/local/bin/cmake -E echo_append
	/usr/local/bin/cmake -E touch /root/PowerGraph/deps/opencv/src/opencv-stamp/opencv-update

../deps/opencv/src/opencv-stamp/opencv-patch: ../deps/opencv/src/opencv-stamp/opencv-download
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/PowerGraph/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Performing patch step for 'opencv'"
	cd /root/PowerGraph/deps/opencv/src/opencv && patch -N -p0 cmake/OpenCVModule.cmake -i /root/PowerGraph/patches/opencv_apple_rpath.patch || true
	cd /root/PowerGraph/deps/opencv/src/opencv && /usr/local/bin/cmake -E touch /root/PowerGraph/deps/opencv/src/opencv-stamp/opencv-patch

../deps/opencv/src/opencv-stamp/opencv-configure: ../deps/opencv/tmp/opencv-cfgcmd.txt
../deps/opencv/src/opencv-stamp/opencv-configure: ../deps/opencv/src/opencv-stamp/opencv-update
../deps/opencv/src/opencv-stamp/opencv-configure: ../deps/opencv/src/opencv-stamp/opencv-patch
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/PowerGraph/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Performing configure step for 'opencv'"
	cd /root/PowerGraph/deps/opencv/src/opencv-build && /usr/local/bin/cmake -DCMAKE_INSTALL_PREFIX=/root/PowerGraph/deps/local -DBUILD_TESTS=OFF -DBUILD_PERF_TESTS=OFF -DBUILD_PACKAGE=OFF -DBUILD_EXAMPLES=OFF -DOPENCV_BUILD_3RDPARTY_LIBS=ON -DBUILD_SHARED_LIBS=ON -DBUILD_DOCS=OFF -DBUILD_JPEG=ON -DCMAKE_INCLUDE_PATH=/root/PowerGraph/deps/local/include -DWITH_CUBLAS=OFF -DWITH_1394=OFF -DWITH_AVFOUNDATION=OFF -DWITH_CUDA=OFF -DWITH_CUFFT=OFF -DWITH_FFMPEG=OFF -DWITH_GSTREAMER=OFF -DWITH_GTK=OFF -DWITH_QUICKTIME=OFF -DWITH_VIDEOINPUT=OFF -DWITH_XIMEA=OFF -DWITH_XINE=OFF -DWITH_V4L=OFF -DWITH_UNICAP=OFF -DWITH_QT=OFF -DWITH_JASPER=NO -DWITH_TIFF=NO -DWITH_OPENCL=OFF -DCMAKE_LIBRARY_PATH=/root/PowerGraph/deps/local/lib "-GUnix Makefiles" /root/PowerGraph/deps/opencv/src/opencv
	cd /root/PowerGraph/deps/opencv/src/opencv-build && /usr/local/bin/cmake -E touch /root/PowerGraph/deps/opencv/src/opencv-stamp/opencv-configure

../deps/opencv/src/opencv-stamp/opencv-build: ../deps/opencv/src/opencv-stamp/opencv-configure
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/root/PowerGraph/debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Performing build step for 'opencv'"
	cd /root/PowerGraph/deps/opencv/src/opencv-build && $(MAKE)
	cd /root/PowerGraph/deps/opencv/src/opencv-build && /usr/local/bin/cmake -E touch /root/PowerGraph/deps/opencv/src/opencv-stamp/opencv-build

opencv: CMakeFiles/opencv
opencv: CMakeFiles/opencv-complete
opencv: ../deps/opencv/src/opencv-stamp/opencv-install
opencv: ../deps/opencv/src/opencv-stamp/opencv-mkdir
opencv: ../deps/opencv/src/opencv-stamp/opencv-download
opencv: ../deps/opencv/src/opencv-stamp/opencv-update
opencv: ../deps/opencv/src/opencv-stamp/opencv-patch
opencv: ../deps/opencv/src/opencv-stamp/opencv-configure
opencv: ../deps/opencv/src/opencv-stamp/opencv-build
opencv: CMakeFiles/opencv.dir/build.make

.PHONY : opencv

# Rule to build all files generated by this target.
CMakeFiles/opencv.dir/build: opencv

.PHONY : CMakeFiles/opencv.dir/build

CMakeFiles/opencv.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/opencv.dir/cmake_clean.cmake
.PHONY : CMakeFiles/opencv.dir/clean

CMakeFiles/opencv.dir/depend:
	cd /root/PowerGraph/debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /root/PowerGraph /root/PowerGraph /root/PowerGraph/debug /root/PowerGraph/debug /root/PowerGraph/debug/CMakeFiles/opencv.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/opencv.dir/depend

