# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.24

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.24.2/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.24.2/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/Users/tanyasharma/Desktop/Rutgers/Fall 22/DBMS/Assignment 2"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/Users/tanyasharma/Desktop/Rutgers/Fall 22/DBMS/Assignment 2/build"

# Include any dependencies generated for this target.
include CMakeFiles/filter-seq-scan-test.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/filter-seq-scan-test.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/filter-seq-scan-test.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/filter-seq-scan-test.dir/flags.make

CMakeFiles/filter-seq-scan-test.dir/test/filter_seq_scan_test.cpp.o: CMakeFiles/filter-seq-scan-test.dir/flags.make
CMakeFiles/filter-seq-scan-test.dir/test/filter_seq_scan_test.cpp.o: /Users/tanyasharma/Desktop/Rutgers/Fall\ 22/DBMS/Assignment\ 2/test/filter_seq_scan_test.cpp
CMakeFiles/filter-seq-scan-test.dir/test/filter_seq_scan_test.cpp.o: CMakeFiles/filter-seq-scan-test.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/Users/tanyasharma/Desktop/Rutgers/Fall 22/DBMS/Assignment 2/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/filter-seq-scan-test.dir/test/filter_seq_scan_test.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/filter-seq-scan-test.dir/test/filter_seq_scan_test.cpp.o -MF CMakeFiles/filter-seq-scan-test.dir/test/filter_seq_scan_test.cpp.o.d -o CMakeFiles/filter-seq-scan-test.dir/test/filter_seq_scan_test.cpp.o -c "/Users/tanyasharma/Desktop/Rutgers/Fall 22/DBMS/Assignment 2/test/filter_seq_scan_test.cpp"

CMakeFiles/filter-seq-scan-test.dir/test/filter_seq_scan_test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/filter-seq-scan-test.dir/test/filter_seq_scan_test.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/Users/tanyasharma/Desktop/Rutgers/Fall 22/DBMS/Assignment 2/test/filter_seq_scan_test.cpp" > CMakeFiles/filter-seq-scan-test.dir/test/filter_seq_scan_test.cpp.i

CMakeFiles/filter-seq-scan-test.dir/test/filter_seq_scan_test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/filter-seq-scan-test.dir/test/filter_seq_scan_test.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/Users/tanyasharma/Desktop/Rutgers/Fall 22/DBMS/Assignment 2/test/filter_seq_scan_test.cpp" -o CMakeFiles/filter-seq-scan-test.dir/test/filter_seq_scan_test.cpp.s

# Object files for target filter-seq-scan-test
filter__seq__scan__test_OBJECTS = \
"CMakeFiles/filter-seq-scan-test.dir/test/filter_seq_scan_test.cpp.o"

# External object files for target filter-seq-scan-test
filter__seq__scan__test_EXTERNAL_OBJECTS =

filter-seq-scan-test: CMakeFiles/filter-seq-scan-test.dir/test/filter_seq_scan_test.cpp.o
filter-seq-scan-test: CMakeFiles/filter-seq-scan-test.dir/build.make
filter-seq-scan-test: src/libEXECUTOR.a
filter-seq-scan-test: CMakeFiles/filter-seq-scan-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/Users/tanyasharma/Desktop/Rutgers/Fall 22/DBMS/Assignment 2/build/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable filter-seq-scan-test"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/filter-seq-scan-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/filter-seq-scan-test.dir/build: filter-seq-scan-test
.PHONY : CMakeFiles/filter-seq-scan-test.dir/build

CMakeFiles/filter-seq-scan-test.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/filter-seq-scan-test.dir/cmake_clean.cmake
.PHONY : CMakeFiles/filter-seq-scan-test.dir/clean

CMakeFiles/filter-seq-scan-test.dir/depend:
	cd "/Users/tanyasharma/Desktop/Rutgers/Fall 22/DBMS/Assignment 2/build" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/Users/tanyasharma/Desktop/Rutgers/Fall 22/DBMS/Assignment 2" "/Users/tanyasharma/Desktop/Rutgers/Fall 22/DBMS/Assignment 2" "/Users/tanyasharma/Desktop/Rutgers/Fall 22/DBMS/Assignment 2/build" "/Users/tanyasharma/Desktop/Rutgers/Fall 22/DBMS/Assignment 2/build" "/Users/tanyasharma/Desktop/Rutgers/Fall 22/DBMS/Assignment 2/build/CMakeFiles/filter-seq-scan-test.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/filter-seq-scan-test.dir/depend

