# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.4

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
CMAKE_COMMAND = /usr/physics/python/Canopy-1.7.2/Canopy_64bit/User/bin/cmake

# The command to remove a file.
RM = /usr/physics/python/Canopy-1.7.2/Canopy_64bit/User/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /suphys/joelh/Documents/biomod/oxDNA

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /suphys/joelh/Documents/biomod/oxDNA/build

# Utility rule file for test_quick.

# Include the progress variables for this target.
include CMakeFiles/test_quick.dir/progress.make

CMakeFiles/test_quick:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/suphys/joelh/Documents/biomod/oxDNA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running quick tests"
	cd /suphys/joelh/Documents/biomod/oxDNA/TEST_LR && /suphys/joelh/Documents/biomod/oxDNA/TEST_LR/TestSuite.py test_folder_list.txt /suphys/joelh/Documents/biomod/oxDNA/build/bin/oxDNA quick

test_quick: CMakeFiles/test_quick
test_quick: CMakeFiles/test_quick.dir/build.make

.PHONY : test_quick

# Rule to build all files generated by this target.
CMakeFiles/test_quick.dir/build: test_quick

.PHONY : CMakeFiles/test_quick.dir/build

CMakeFiles/test_quick.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/test_quick.dir/cmake_clean.cmake
.PHONY : CMakeFiles/test_quick.dir/clean

CMakeFiles/test_quick.dir/depend:
	cd /suphys/joelh/Documents/biomod/oxDNA/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /suphys/joelh/Documents/biomod/oxDNA /suphys/joelh/Documents/biomod/oxDNA /suphys/joelh/Documents/biomod/oxDNA/build /suphys/joelh/Documents/biomod/oxDNA/build /suphys/joelh/Documents/biomod/oxDNA/build/CMakeFiles/test_quick.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/test_quick.dir/depend

