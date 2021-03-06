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
include contrib/rovigatti/CMakeFiles/mWInteraction.dir/depend.make

# Include the progress variables for this target.
include contrib/rovigatti/CMakeFiles/mWInteraction.dir/progress.make

# Include the compile flags for this target's objects.
include contrib/rovigatti/CMakeFiles/mWInteraction.dir/flags.make

contrib/rovigatti/CMakeFiles/mWInteraction.dir/src/Interactions/mWInteraction.cpp.o: contrib/rovigatti/CMakeFiles/mWInteraction.dir/flags.make
contrib/rovigatti/CMakeFiles/mWInteraction.dir/src/Interactions/mWInteraction.cpp.o: contrib/rovigatti/src/Interactions/mWInteraction.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/suphys/joelh/Documents/DNA/oxDNA/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object contrib/rovigatti/CMakeFiles/mWInteraction.dir/src/Interactions/mWInteraction.cpp.o"
	cd /suphys/joelh/Documents/DNA/oxDNA/contrib/rovigatti && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mWInteraction.dir/src/Interactions/mWInteraction.cpp.o -c /suphys/joelh/Documents/DNA/oxDNA/contrib/rovigatti/src/Interactions/mWInteraction.cpp

contrib/rovigatti/CMakeFiles/mWInteraction.dir/src/Interactions/mWInteraction.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mWInteraction.dir/src/Interactions/mWInteraction.cpp.i"
	cd /suphys/joelh/Documents/DNA/oxDNA/contrib/rovigatti && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /suphys/joelh/Documents/DNA/oxDNA/contrib/rovigatti/src/Interactions/mWInteraction.cpp > CMakeFiles/mWInteraction.dir/src/Interactions/mWInteraction.cpp.i

contrib/rovigatti/CMakeFiles/mWInteraction.dir/src/Interactions/mWInteraction.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mWInteraction.dir/src/Interactions/mWInteraction.cpp.s"
	cd /suphys/joelh/Documents/DNA/oxDNA/contrib/rovigatti && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /suphys/joelh/Documents/DNA/oxDNA/contrib/rovigatti/src/Interactions/mWInteraction.cpp -o CMakeFiles/mWInteraction.dir/src/Interactions/mWInteraction.cpp.s

contrib/rovigatti/CMakeFiles/mWInteraction.dir/src/Interactions/mWInteraction.cpp.o.requires:

.PHONY : contrib/rovigatti/CMakeFiles/mWInteraction.dir/src/Interactions/mWInteraction.cpp.o.requires

contrib/rovigatti/CMakeFiles/mWInteraction.dir/src/Interactions/mWInteraction.cpp.o.provides: contrib/rovigatti/CMakeFiles/mWInteraction.dir/src/Interactions/mWInteraction.cpp.o.requires
	$(MAKE) -f contrib/rovigatti/CMakeFiles/mWInteraction.dir/build.make contrib/rovigatti/CMakeFiles/mWInteraction.dir/src/Interactions/mWInteraction.cpp.o.provides.build
.PHONY : contrib/rovigatti/CMakeFiles/mWInteraction.dir/src/Interactions/mWInteraction.cpp.o.provides

contrib/rovigatti/CMakeFiles/mWInteraction.dir/src/Interactions/mWInteraction.cpp.o.provides.build: contrib/rovigatti/CMakeFiles/mWInteraction.dir/src/Interactions/mWInteraction.cpp.o


# Object files for target mWInteraction
mWInteraction_OBJECTS = \
"CMakeFiles/mWInteraction.dir/src/Interactions/mWInteraction.cpp.o"

# External object files for target mWInteraction
mWInteraction_EXTERNAL_OBJECTS =

contrib/rovigatti/mWInteraction.so: contrib/rovigatti/CMakeFiles/mWInteraction.dir/src/Interactions/mWInteraction.cpp.o
contrib/rovigatti/mWInteraction.so: contrib/rovigatti/CMakeFiles/mWInteraction.dir/build.make
contrib/rovigatti/mWInteraction.so: contrib/rovigatti/CMakeFiles/mWInteraction.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/suphys/joelh/Documents/DNA/oxDNA/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library mWInteraction.so"
	cd /suphys/joelh/Documents/DNA/oxDNA/contrib/rovigatti && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mWInteraction.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
contrib/rovigatti/CMakeFiles/mWInteraction.dir/build: contrib/rovigatti/mWInteraction.so

.PHONY : contrib/rovigatti/CMakeFiles/mWInteraction.dir/build

contrib/rovigatti/CMakeFiles/mWInteraction.dir/requires: contrib/rovigatti/CMakeFiles/mWInteraction.dir/src/Interactions/mWInteraction.cpp.o.requires

.PHONY : contrib/rovigatti/CMakeFiles/mWInteraction.dir/requires

contrib/rovigatti/CMakeFiles/mWInteraction.dir/clean:
	cd /suphys/joelh/Documents/DNA/oxDNA/contrib/rovigatti && $(CMAKE_COMMAND) -P CMakeFiles/mWInteraction.dir/cmake_clean.cmake
.PHONY : contrib/rovigatti/CMakeFiles/mWInteraction.dir/clean

contrib/rovigatti/CMakeFiles/mWInteraction.dir/depend:
	cd /suphys/joelh/Documents/DNA/oxDNA && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /suphys/joelh/Documents/DNA/oxDNA /suphys/joelh/Documents/DNA/oxDNA/contrib/rovigatti /suphys/joelh/Documents/DNA/oxDNA /suphys/joelh/Documents/DNA/oxDNA/contrib/rovigatti /suphys/joelh/Documents/DNA/oxDNA/contrib/rovigatti/CMakeFiles/mWInteraction.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contrib/rovigatti/CMakeFiles/mWInteraction.dir/depend

