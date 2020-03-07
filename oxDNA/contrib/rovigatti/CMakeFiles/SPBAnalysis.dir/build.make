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
include contrib/rovigatti/CMakeFiles/SPBAnalysis.dir/depend.make

# Include the progress variables for this target.
include contrib/rovigatti/CMakeFiles/SPBAnalysis.dir/progress.make

# Include the compile flags for this target's objects.
include contrib/rovigatti/CMakeFiles/SPBAnalysis.dir/flags.make

contrib/rovigatti/CMakeFiles/SPBAnalysis.dir/src/Observables/SPBAnalysis.cpp.o: contrib/rovigatti/CMakeFiles/SPBAnalysis.dir/flags.make
contrib/rovigatti/CMakeFiles/SPBAnalysis.dir/src/Observables/SPBAnalysis.cpp.o: contrib/rovigatti/src/Observables/SPBAnalysis.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/suphys/joelh/Documents/DNA/oxDNA/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object contrib/rovigatti/CMakeFiles/SPBAnalysis.dir/src/Observables/SPBAnalysis.cpp.o"
	cd /suphys/joelh/Documents/DNA/oxDNA/contrib/rovigatti && /usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/SPBAnalysis.dir/src/Observables/SPBAnalysis.cpp.o -c /suphys/joelh/Documents/DNA/oxDNA/contrib/rovigatti/src/Observables/SPBAnalysis.cpp

contrib/rovigatti/CMakeFiles/SPBAnalysis.dir/src/Observables/SPBAnalysis.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SPBAnalysis.dir/src/Observables/SPBAnalysis.cpp.i"
	cd /suphys/joelh/Documents/DNA/oxDNA/contrib/rovigatti && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /suphys/joelh/Documents/DNA/oxDNA/contrib/rovigatti/src/Observables/SPBAnalysis.cpp > CMakeFiles/SPBAnalysis.dir/src/Observables/SPBAnalysis.cpp.i

contrib/rovigatti/CMakeFiles/SPBAnalysis.dir/src/Observables/SPBAnalysis.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SPBAnalysis.dir/src/Observables/SPBAnalysis.cpp.s"
	cd /suphys/joelh/Documents/DNA/oxDNA/contrib/rovigatti && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /suphys/joelh/Documents/DNA/oxDNA/contrib/rovigatti/src/Observables/SPBAnalysis.cpp -o CMakeFiles/SPBAnalysis.dir/src/Observables/SPBAnalysis.cpp.s

contrib/rovigatti/CMakeFiles/SPBAnalysis.dir/src/Observables/SPBAnalysis.cpp.o.requires:

.PHONY : contrib/rovigatti/CMakeFiles/SPBAnalysis.dir/src/Observables/SPBAnalysis.cpp.o.requires

contrib/rovigatti/CMakeFiles/SPBAnalysis.dir/src/Observables/SPBAnalysis.cpp.o.provides: contrib/rovigatti/CMakeFiles/SPBAnalysis.dir/src/Observables/SPBAnalysis.cpp.o.requires
	$(MAKE) -f contrib/rovigatti/CMakeFiles/SPBAnalysis.dir/build.make contrib/rovigatti/CMakeFiles/SPBAnalysis.dir/src/Observables/SPBAnalysis.cpp.o.provides.build
.PHONY : contrib/rovigatti/CMakeFiles/SPBAnalysis.dir/src/Observables/SPBAnalysis.cpp.o.provides

contrib/rovigatti/CMakeFiles/SPBAnalysis.dir/src/Observables/SPBAnalysis.cpp.o.provides.build: contrib/rovigatti/CMakeFiles/SPBAnalysis.dir/src/Observables/SPBAnalysis.cpp.o


# Object files for target SPBAnalysis
SPBAnalysis_OBJECTS = \
"CMakeFiles/SPBAnalysis.dir/src/Observables/SPBAnalysis.cpp.o"

# External object files for target SPBAnalysis
SPBAnalysis_EXTERNAL_OBJECTS =

contrib/rovigatti/SPBAnalysis.so: contrib/rovigatti/CMakeFiles/SPBAnalysis.dir/src/Observables/SPBAnalysis.cpp.o
contrib/rovigatti/SPBAnalysis.so: contrib/rovigatti/CMakeFiles/SPBAnalysis.dir/build.make
contrib/rovigatti/SPBAnalysis.so: contrib/rovigatti/CMakeFiles/SPBAnalysis.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/suphys/joelh/Documents/DNA/oxDNA/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library SPBAnalysis.so"
	cd /suphys/joelh/Documents/DNA/oxDNA/contrib/rovigatti && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/SPBAnalysis.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
contrib/rovigatti/CMakeFiles/SPBAnalysis.dir/build: contrib/rovigatti/SPBAnalysis.so

.PHONY : contrib/rovigatti/CMakeFiles/SPBAnalysis.dir/build

contrib/rovigatti/CMakeFiles/SPBAnalysis.dir/requires: contrib/rovigatti/CMakeFiles/SPBAnalysis.dir/src/Observables/SPBAnalysis.cpp.o.requires

.PHONY : contrib/rovigatti/CMakeFiles/SPBAnalysis.dir/requires

contrib/rovigatti/CMakeFiles/SPBAnalysis.dir/clean:
	cd /suphys/joelh/Documents/DNA/oxDNA/contrib/rovigatti && $(CMAKE_COMMAND) -P CMakeFiles/SPBAnalysis.dir/cmake_clean.cmake
.PHONY : contrib/rovigatti/CMakeFiles/SPBAnalysis.dir/clean

contrib/rovigatti/CMakeFiles/SPBAnalysis.dir/depend:
	cd /suphys/joelh/Documents/DNA/oxDNA && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /suphys/joelh/Documents/DNA/oxDNA /suphys/joelh/Documents/DNA/oxDNA/contrib/rovigatti /suphys/joelh/Documents/DNA/oxDNA /suphys/joelh/Documents/DNA/oxDNA/contrib/rovigatti /suphys/joelh/Documents/DNA/oxDNA/contrib/rovigatti/CMakeFiles/SPBAnalysis.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contrib/rovigatti/CMakeFiles/SPBAnalysis.dir/depend

