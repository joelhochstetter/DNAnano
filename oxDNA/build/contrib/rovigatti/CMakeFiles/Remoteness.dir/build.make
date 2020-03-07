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
include contrib/rovigatti/CMakeFiles/Remoteness.dir/depend.make

# Include the progress variables for this target.
include contrib/rovigatti/CMakeFiles/Remoteness.dir/progress.make

# Include the compile flags for this target's objects.
include contrib/rovigatti/CMakeFiles/Remoteness.dir/flags.make

contrib/rovigatti/CMakeFiles/Remoteness.dir/src/Observables/Remoteness.cpp.o: contrib/rovigatti/CMakeFiles/Remoteness.dir/flags.make
contrib/rovigatti/CMakeFiles/Remoteness.dir/src/Observables/Remoteness.cpp.o: ../contrib/rovigatti/src/Observables/Remoteness.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/suphys/joelh/Documents/biomod/oxDNA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object contrib/rovigatti/CMakeFiles/Remoteness.dir/src/Observables/Remoteness.cpp.o"
	cd /suphys/joelh/Documents/biomod/oxDNA/build/contrib/rovigatti && /bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/Remoteness.dir/src/Observables/Remoteness.cpp.o -c /suphys/joelh/Documents/biomod/oxDNA/contrib/rovigatti/src/Observables/Remoteness.cpp

contrib/rovigatti/CMakeFiles/Remoteness.dir/src/Observables/Remoteness.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Remoteness.dir/src/Observables/Remoteness.cpp.i"
	cd /suphys/joelh/Documents/biomod/oxDNA/build/contrib/rovigatti && /bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /suphys/joelh/Documents/biomod/oxDNA/contrib/rovigatti/src/Observables/Remoteness.cpp > CMakeFiles/Remoteness.dir/src/Observables/Remoteness.cpp.i

contrib/rovigatti/CMakeFiles/Remoteness.dir/src/Observables/Remoteness.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Remoteness.dir/src/Observables/Remoteness.cpp.s"
	cd /suphys/joelh/Documents/biomod/oxDNA/build/contrib/rovigatti && /bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /suphys/joelh/Documents/biomod/oxDNA/contrib/rovigatti/src/Observables/Remoteness.cpp -o CMakeFiles/Remoteness.dir/src/Observables/Remoteness.cpp.s

contrib/rovigatti/CMakeFiles/Remoteness.dir/src/Observables/Remoteness.cpp.o.requires:

.PHONY : contrib/rovigatti/CMakeFiles/Remoteness.dir/src/Observables/Remoteness.cpp.o.requires

contrib/rovigatti/CMakeFiles/Remoteness.dir/src/Observables/Remoteness.cpp.o.provides: contrib/rovigatti/CMakeFiles/Remoteness.dir/src/Observables/Remoteness.cpp.o.requires
	$(MAKE) -f contrib/rovigatti/CMakeFiles/Remoteness.dir/build.make contrib/rovigatti/CMakeFiles/Remoteness.dir/src/Observables/Remoteness.cpp.o.provides.build
.PHONY : contrib/rovigatti/CMakeFiles/Remoteness.dir/src/Observables/Remoteness.cpp.o.provides

contrib/rovigatti/CMakeFiles/Remoteness.dir/src/Observables/Remoteness.cpp.o.provides.build: contrib/rovigatti/CMakeFiles/Remoteness.dir/src/Observables/Remoteness.cpp.o


# Object files for target Remoteness
Remoteness_OBJECTS = \
"CMakeFiles/Remoteness.dir/src/Observables/Remoteness.cpp.o"

# External object files for target Remoteness
Remoteness_EXTERNAL_OBJECTS =

../contrib/rovigatti/Remoteness.so: contrib/rovigatti/CMakeFiles/Remoteness.dir/src/Observables/Remoteness.cpp.o
../contrib/rovigatti/Remoteness.so: contrib/rovigatti/CMakeFiles/Remoteness.dir/build.make
../contrib/rovigatti/Remoteness.so: contrib/rovigatti/CMakeFiles/Remoteness.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/suphys/joelh/Documents/biomod/oxDNA/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library ../../../contrib/rovigatti/Remoteness.so"
	cd /suphys/joelh/Documents/biomod/oxDNA/build/contrib/rovigatti && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Remoteness.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
contrib/rovigatti/CMakeFiles/Remoteness.dir/build: ../contrib/rovigatti/Remoteness.so

.PHONY : contrib/rovigatti/CMakeFiles/Remoteness.dir/build

contrib/rovigatti/CMakeFiles/Remoteness.dir/requires: contrib/rovigatti/CMakeFiles/Remoteness.dir/src/Observables/Remoteness.cpp.o.requires

.PHONY : contrib/rovigatti/CMakeFiles/Remoteness.dir/requires

contrib/rovigatti/CMakeFiles/Remoteness.dir/clean:
	cd /suphys/joelh/Documents/biomod/oxDNA/build/contrib/rovigatti && $(CMAKE_COMMAND) -P CMakeFiles/Remoteness.dir/cmake_clean.cmake
.PHONY : contrib/rovigatti/CMakeFiles/Remoteness.dir/clean

contrib/rovigatti/CMakeFiles/Remoteness.dir/depend:
	cd /suphys/joelh/Documents/biomod/oxDNA/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /suphys/joelh/Documents/biomod/oxDNA /suphys/joelh/Documents/biomod/oxDNA/contrib/rovigatti /suphys/joelh/Documents/biomod/oxDNA/build /suphys/joelh/Documents/biomod/oxDNA/build/contrib/rovigatti /suphys/joelh/Documents/biomod/oxDNA/build/contrib/rovigatti/CMakeFiles/Remoteness.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : contrib/rovigatti/CMakeFiles/Remoteness.dir/depend

