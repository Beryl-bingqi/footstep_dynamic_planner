# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/beryl/fuerte_workspace/sandbox/humanoid_navigation_ros/sbpl-dev

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/beryl/fuerte_workspace/sandbox/humanoid_navigation_ros/sbpl-dev/build

# Include any dependencies generated for this target.
include CMakeFiles/test_sbpl.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/test_sbpl.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/test_sbpl.dir/flags.make

CMakeFiles/test_sbpl.dir/src/test/main.o: CMakeFiles/test_sbpl.dir/flags.make
CMakeFiles/test_sbpl.dir/src/test/main.o: ../src/test/main.cpp
CMakeFiles/test_sbpl.dir/src/test/main.o: ../manifest.xml
CMakeFiles/test_sbpl.dir/src/test/main.o: /opt/ros/fuerte/share/roslang/manifest.xml
CMakeFiles/test_sbpl.dir/src/test/main.o: /opt/ros/fuerte/share/roscpp/manifest.xml
	$(CMAKE_COMMAND) -E cmake_progress_report /home/beryl/fuerte_workspace/sandbox/humanoid_navigation_ros/sbpl-dev/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/test_sbpl.dir/src/test/main.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -o CMakeFiles/test_sbpl.dir/src/test/main.o -c /home/beryl/fuerte_workspace/sandbox/humanoid_navigation_ros/sbpl-dev/src/test/main.cpp

CMakeFiles/test_sbpl.dir/src/test/main.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/test_sbpl.dir/src/test/main.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -E /home/beryl/fuerte_workspace/sandbox/humanoid_navigation_ros/sbpl-dev/src/test/main.cpp > CMakeFiles/test_sbpl.dir/src/test/main.i

CMakeFiles/test_sbpl.dir/src/test/main.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/test_sbpl.dir/src/test/main.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -W -Wall -Wno-unused-parameter -fno-strict-aliasing -pthread -S /home/beryl/fuerte_workspace/sandbox/humanoid_navigation_ros/sbpl-dev/src/test/main.cpp -o CMakeFiles/test_sbpl.dir/src/test/main.s

CMakeFiles/test_sbpl.dir/src/test/main.o.requires:
.PHONY : CMakeFiles/test_sbpl.dir/src/test/main.o.requires

CMakeFiles/test_sbpl.dir/src/test/main.o.provides: CMakeFiles/test_sbpl.dir/src/test/main.o.requires
	$(MAKE) -f CMakeFiles/test_sbpl.dir/build.make CMakeFiles/test_sbpl.dir/src/test/main.o.provides.build
.PHONY : CMakeFiles/test_sbpl.dir/src/test/main.o.provides

CMakeFiles/test_sbpl.dir/src/test/main.o.provides.build: CMakeFiles/test_sbpl.dir/src/test/main.o

# Object files for target test_sbpl
test_sbpl_OBJECTS = \
"CMakeFiles/test_sbpl.dir/src/test/main.o"

# External object files for target test_sbpl
test_sbpl_EXTERNAL_OBJECTS =

../bin/test_sbpl: CMakeFiles/test_sbpl.dir/src/test/main.o
../bin/test_sbpl: ../lib/libsbpl.so
../bin/test_sbpl: CMakeFiles/test_sbpl.dir/build.make
../bin/test_sbpl: CMakeFiles/test_sbpl.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../bin/test_sbpl"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/test_sbpl.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/test_sbpl.dir/build: ../bin/test_sbpl
.PHONY : CMakeFiles/test_sbpl.dir/build

CMakeFiles/test_sbpl.dir/requires: CMakeFiles/test_sbpl.dir/src/test/main.o.requires
.PHONY : CMakeFiles/test_sbpl.dir/requires

CMakeFiles/test_sbpl.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_sbpl.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_sbpl.dir/clean

CMakeFiles/test_sbpl.dir/depend:
	cd /home/beryl/fuerte_workspace/sandbox/humanoid_navigation_ros/sbpl-dev/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/beryl/fuerte_workspace/sandbox/humanoid_navigation_ros/sbpl-dev /home/beryl/fuerte_workspace/sandbox/humanoid_navigation_ros/sbpl-dev /home/beryl/fuerte_workspace/sandbox/humanoid_navigation_ros/sbpl-dev/build /home/beryl/fuerte_workspace/sandbox/humanoid_navigation_ros/sbpl-dev/build /home/beryl/fuerte_workspace/sandbox/humanoid_navigation_ros/sbpl-dev/build/CMakeFiles/test_sbpl.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_sbpl.dir/depend

