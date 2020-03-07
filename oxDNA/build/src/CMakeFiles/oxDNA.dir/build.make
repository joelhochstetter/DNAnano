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

# Include any dependencies generated for this target.
include src/CMakeFiles/oxDNA.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/oxDNA.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/oxDNA.dir/flags.make

src/CMakeFiles/oxDNA.dir/oxDNA.cpp.o: src/CMakeFiles/oxDNA.dir/flags.make
src/CMakeFiles/oxDNA.dir/oxDNA.cpp.o: ../src/oxDNA.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/suphys/joelh/Documents/biomod/oxDNA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/oxDNA.dir/oxDNA.cpp.o"
	cd /suphys/joelh/Documents/biomod/oxDNA/build/src && /bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/oxDNA.dir/oxDNA.cpp.o -c /suphys/joelh/Documents/biomod/oxDNA/src/oxDNA.cpp

src/CMakeFiles/oxDNA.dir/oxDNA.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/oxDNA.dir/oxDNA.cpp.i"
	cd /suphys/joelh/Documents/biomod/oxDNA/build/src && /bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /suphys/joelh/Documents/biomod/oxDNA/src/oxDNA.cpp > CMakeFiles/oxDNA.dir/oxDNA.cpp.i

src/CMakeFiles/oxDNA.dir/oxDNA.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/oxDNA.dir/oxDNA.cpp.s"
	cd /suphys/joelh/Documents/biomod/oxDNA/build/src && /bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /suphys/joelh/Documents/biomod/oxDNA/src/oxDNA.cpp -o CMakeFiles/oxDNA.dir/oxDNA.cpp.s

src/CMakeFiles/oxDNA.dir/oxDNA.cpp.o.requires:

.PHONY : src/CMakeFiles/oxDNA.dir/oxDNA.cpp.o.requires

src/CMakeFiles/oxDNA.dir/oxDNA.cpp.o.provides: src/CMakeFiles/oxDNA.dir/oxDNA.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/oxDNA.dir/build.make src/CMakeFiles/oxDNA.dir/oxDNA.cpp.o.provides.build
.PHONY : src/CMakeFiles/oxDNA.dir/oxDNA.cpp.o.provides

src/CMakeFiles/oxDNA.dir/oxDNA.cpp.o.provides.build: src/CMakeFiles/oxDNA.dir/oxDNA.cpp.o


# Object files for target oxDNA
oxDNA_OBJECTS = \
"CMakeFiles/oxDNA.dir/oxDNA.cpp.o"

# External object files for target oxDNA
oxDNA_EXTERNAL_OBJECTS =

bin/oxDNA: src/CMakeFiles/oxDNA.dir/oxDNA.cpp.o
bin/oxDNA: src/CMakeFiles/oxDNA.dir/build.make
bin/oxDNA: src/libcommon.a
bin/oxDNA: src/CMakeFiles/oxDNA.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/suphys/joelh/Documents/biomod/oxDNA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../bin/oxDNA"
	cd /suphys/joelh/Documents/biomod/oxDNA/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/oxDNA.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/oxDNA.dir/build: bin/oxDNA

.PHONY : src/CMakeFiles/oxDNA.dir/build

src/CMakeFiles/oxDNA.dir/requires: src/CMakeFiles/oxDNA.dir/oxDNA.cpp.o.requires

.PHONY : src/CMakeFiles/oxDNA.dir/requires

src/CMakeFiles/oxDNA.dir/clean:
	cd /suphys/joelh/Documents/biomod/oxDNA/build/src && $(CMAKE_COMMAND) -P CMakeFiles/oxDNA.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/oxDNA.dir/clean

src/CMakeFiles/oxDNA.dir/depend:
	cd /suphys/joelh/Documents/biomod/oxDNA/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /suphys/joelh/Documents/biomod/oxDNA /suphys/joelh/Documents/biomod/oxDNA/src /suphys/joelh/Documents/biomod/oxDNA/build /suphys/joelh/Documents/biomod/oxDNA/build/src /suphys/joelh/Documents/biomod/oxDNA/build/src/CMakeFiles/oxDNA.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/oxDNA.dir/depend

