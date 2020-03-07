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

# Include any dependencies generated for this target.
include contrib/rovigatti/CMakeFiles/MGInteraction.dir/depend.make

# Include the progress variables for this target.
include contrib/rovigatti/CMakeFiles/MGInteraction.dir/progress.make

# Include the compile flags for this target's objects.
include contrib/rovigatti/CMakeFiles/MGInteraction.dir/flags.make

contrib/rovigatti/CMakeFiles/MGInteraction.dir/src/Interactions/MGInteraction.cpp.o: contrib/rovigatti/CMakeFiles/MGInteraction.dir/flags.make
contrib/rovigatti/CMakeFiles/MGInteraction.dir/src/Interactions/MGInteraction.cpp.o: contrib/rovigatti/src/Interactions/MGInteraction.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/suphys/joelh/Documents/DNA/oxDNA/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object contrib/rovigatti/CMakeFiles/MGInteraction.dir/src/Interactions/MGInteraction.cpp.o"
	cd /suphys/joelh/Documents/DNA/oxDNA/contrib/rovigatti && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/MGInteraction.dir/src/Interactions/MGInteraction.cpp.o -c /suphys/joelh/Documents/DNA/oxDNA/contrib/rovigatti/src/Interactions/MGInteraction.cpp

contrib/rovigatti/CMakeFiles/MGInteraction.dir/src/Interactions/MGInteraction.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/MGInteraction.dir/src/Interactions/MGInteraction.cpp.i"
	cd /suphys/joelh/Documents/DNA/oxDNA/contrib/rovigatti && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /suphys/joelh/Documents/DNA/oxDNA/contrib/rovigatti/src/Interactions/MGInteraction.cpp > CMakeFiles/MGInteraction.dir/src/Interactions/MGInteraction.cpp.i

contrib/rovigatti/CMakeFiles/MGInteraction.dir/src/Interactions/MGInteraction.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/MGInteraction.dir/src/Interactions/MGInteraction.cpp.s"
	cd /suphys/joelh/Documents/DNA/oxDNA/contrib/rovigatti && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /suphys/joelh/Documents/DNA/oxDNA/contrib/rovigatti/src/Interactions/MGInteraction.cpp -o CMakeFiles/MGInteraction.dir/src/Interactions/MGInteraction.cpp.s

contrib/rovigatti/CMakeFiles/MGInteraction.dir/src/Interactions/MGInteraction.cpp.o.requires:

.PHONY : contrib/rovigatti/CMakeFiles/MGInteraction.dir/src/Interactions/MGInteraction.cpp.o.requires

contrib/rovigatti/CMakeFiles/MGInteraction.dir/src/Interactions/MGInteraction.cpp.o.provides: contrib/rovigatti/CMakeFiles/MGInteraction.dir/src/Interactions/MGInteraction.cpp.o.requires
	$(MAKE) -f contrib/rovigatti/CMakeFiles/MGInteraction.dir/build.make contrib/rovigatti/CMakeFiles/MGInteraction.dir/src/Interactions/MGInteraction.cpp.o.provides.build
.PHONY : contrib/rovigatti/CMakeFiles/MGInteraction.dir/src/Interactions/MGInteraction.cpp.o.provides

contrib/rovigatti/CMakeFiles/MGInteraction.dir/src/Interactions/MGInteraction.cpp.o.provides.build: contrib/rovigatti/CMakeFiles/MGInteraction.dir/src/Interactions/MGInteraction.cpp.o


# Object files for target MGInteraction
MGInteraction_OBJECTS = \
"CMakeFiles/MGInteraction.dir/src/Interactions/MGInteraction.cpp.o"

# External object files for target MGInteraction
MGInteraction_EXTERNAL_OBJECTS =

contrib/rovigatti/MGInteraction.so: contrib/rovigatti/CMakeFiles/MGInteraction.dir/src/Interactions/MGInteraction.cpp.o
contrib/rovigatti/MGInteraction.so: contrib/rovigatti/CMakeFiles/MGInteraction.dir/build.make
contrib/rovigatti/MGInteraction.so: contrib/rovigatti/CMakeFiles/MGInteraction.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/suphys/joelh/Documents/DNA/oxDNA/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library MGInteraction.so"
	cd /suphys/joelh/Documents/DNA/oxDNA/contrib/rovigatti && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/MGInteraction.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
contrib/rovigatti/CMakeFiles/MGInteraction.dir/build: contrib/rovigatti/MGInteraction.so

.PHONY : contrib/rovigatti/CMakeFiles/MGInteraction.dir/build

contrib/rovigatti/CMakeFiles/MGInteraction.dir/requires: contrib/rovigatti/CMakeFiles/MGInteraction.dir/src/Interactions/MGInteraction.cpp.o.requires

.PHONY : contrib/rovigatti/CMakeFiles/MGInteraction.dir/requires

contrib/rovigatti/CMakeFiles/MGInteraction.dir/clean:
	cd /suphys/joelh/Documents/DNA/oxDNA/contrib/rovigatti && $(CMAKE_COMMAND) -P CMakeFiles/MGInteraction.dir/cmake_clean.cmake
.PHONY : contrib/rovigatti/CMakeFiles/MGInteraction.dir/clean

contrib/rovigatti/CMakeFiles/MGInteraction.dir/depend:
	cd /suphys/joelh/Documents/DNA/oxDNA && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /suphys/joelh/Documents/DNA/oxDNA /suphys/joelh/Documents/DNA/oxDNA/contrib/rovigatti /suphys/joelh/Documents/DNA/oxDNA /suphys/joelh/Documents/DNA/oxDNA/contrib/rovigatti /suphys/joelh/Documents/DNA/oxDNA/contrib/rovigatti/CMakeFiles/MGInteraction.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contrib/rovigatti/CMakeFiles/MGInteraction.dir/depend

