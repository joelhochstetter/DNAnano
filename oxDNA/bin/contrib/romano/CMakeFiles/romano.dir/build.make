# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/joelh/Documents/DNAnano/oxDNA

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/joelh/Documents/DNAnano/oxDNA/bin

# Utility rule file for romano.

# Include the progress variables for this target.
include contrib/romano/CMakeFiles/romano.dir/progress.make

contrib/romano/CMakeFiles/romano: ../contrib/romano/DirkInteraction.so
contrib/romano/CMakeFiles/romano: ../contrib/romano/DirkInteraction2.so
contrib/romano/CMakeFiles/romano: ../contrib/romano/DirkInteractionBias.so
contrib/romano/CMakeFiles/romano: ../contrib/romano/NematicS.so


romano: contrib/romano/CMakeFiles/romano
romano: contrib/romano/CMakeFiles/romano.dir/build.make

.PHONY : romano

# Rule to build all files generated by this target.
contrib/romano/CMakeFiles/romano.dir/build: romano

.PHONY : contrib/romano/CMakeFiles/romano.dir/build

contrib/romano/CMakeFiles/romano.dir/clean:
	cd /home/joelh/Documents/DNAnano/oxDNA/bin/contrib/romano && $(CMAKE_COMMAND) -P CMakeFiles/romano.dir/cmake_clean.cmake
.PHONY : contrib/romano/CMakeFiles/romano.dir/clean

contrib/romano/CMakeFiles/romano.dir/depend:
	cd /home/joelh/Documents/DNAnano/oxDNA/bin && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/joelh/Documents/DNAnano/oxDNA /home/joelh/Documents/DNAnano/oxDNA/contrib/romano /home/joelh/Documents/DNAnano/oxDNA/bin /home/joelh/Documents/DNAnano/oxDNA/bin/contrib/romano /home/joelh/Documents/DNAnano/oxDNA/bin/contrib/romano/CMakeFiles/romano.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contrib/romano/CMakeFiles/romano.dir/depend

