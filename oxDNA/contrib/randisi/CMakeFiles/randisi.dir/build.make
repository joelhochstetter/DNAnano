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
CMAKE_SOURCE_DIR = /suphys/joelh/Documents/DNA/oxDNA

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /suphys/joelh/Documents/DNA/oxDNA

# Utility rule file for randisi.

# Include the progress variables for this target.
include contrib/randisi/CMakeFiles/randisi.dir/progress.make

contrib/randisi/CMakeFiles/randisi: contrib/randisi/DNA2ModInteraction.so


randisi: contrib/randisi/CMakeFiles/randisi
randisi: contrib/randisi/CMakeFiles/randisi.dir/build.make

.PHONY : randisi

# Rule to build all files generated by this target.
contrib/randisi/CMakeFiles/randisi.dir/build: randisi

.PHONY : contrib/randisi/CMakeFiles/randisi.dir/build

contrib/randisi/CMakeFiles/randisi.dir/clean:
	cd /suphys/joelh/Documents/DNA/oxDNA/contrib/randisi && $(CMAKE_COMMAND) -P CMakeFiles/randisi.dir/cmake_clean.cmake
.PHONY : contrib/randisi/CMakeFiles/randisi.dir/clean

contrib/randisi/CMakeFiles/randisi.dir/depend:
	cd /suphys/joelh/Documents/DNA/oxDNA && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /suphys/joelh/Documents/DNA/oxDNA /suphys/joelh/Documents/DNA/oxDNA/contrib/randisi /suphys/joelh/Documents/DNA/oxDNA /suphys/joelh/Documents/DNA/oxDNA/contrib/randisi /suphys/joelh/Documents/DNA/oxDNA/contrib/randisi/CMakeFiles/randisi.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contrib/randisi/CMakeFiles/randisi.dir/depend

