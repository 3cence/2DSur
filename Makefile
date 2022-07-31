# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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
CMAKE_SOURCE_DIR = /home/ecence/Documents/C++/2DSur

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ecence/Documents/C++/2DSur

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target test
test:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running tests..."
	/usr/bin/ctest --force-new-ctest-process $(ARGS)
.PHONY : test

# Special rule for the target test
test/fast: test

.PHONY : test/fast

# Special rule for the target package_source
package_source:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Run CPack packaging tool for source..."
	/usr/bin/cpack --config ./CPackSourceConfig.cmake /home/ecence/Documents/C++/2DSur/CPackSourceConfig.cmake
.PHONY : package_source

# Special rule for the target package_source
package_source/fast: package_source

.PHONY : package_source/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# Special rule for the target package
package: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Run CPack packaging tool..."
	/usr/bin/cpack --config ./CPackConfig.cmake
.PHONY : package

# Special rule for the target package
package/fast: package

.PHONY : package/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/ecence/Documents/C++/2DSur/CMakeFiles /home/ecence/Documents/C++/2DSur/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/ecence/Documents/C++/2DSur/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named NightlyMemCheck

# Build rule for target.
NightlyMemCheck: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 NightlyMemCheck
.PHONY : NightlyMemCheck

# fast build rule for target.
NightlyMemCheck/fast:
	$(MAKE) -f CMakeFiles/NightlyMemCheck.dir/build.make CMakeFiles/NightlyMemCheck.dir/build
.PHONY : NightlyMemCheck/fast

#=============================================================================
# Target rules for targets named NightlyTest

# Build rule for target.
NightlyTest: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 NightlyTest
.PHONY : NightlyTest

# fast build rule for target.
NightlyTest/fast:
	$(MAKE) -f CMakeFiles/NightlyTest.dir/build.make CMakeFiles/NightlyTest.dir/build
.PHONY : NightlyTest/fast

#=============================================================================
# Target rules for targets named ContinuousConfigure

# Build rule for target.
ContinuousConfigure: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 ContinuousConfigure
.PHONY : ContinuousConfigure

# fast build rule for target.
ContinuousConfigure/fast:
	$(MAKE) -f CMakeFiles/ContinuousConfigure.dir/build.make CMakeFiles/ContinuousConfigure.dir/build
.PHONY : ContinuousConfigure/fast

#=============================================================================
# Target rules for targets named ContinuousBuild

# Build rule for target.
ContinuousBuild: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 ContinuousBuild
.PHONY : ContinuousBuild

# fast build rule for target.
ContinuousBuild/fast:
	$(MAKE) -f CMakeFiles/ContinuousBuild.dir/build.make CMakeFiles/ContinuousBuild.dir/build
.PHONY : ContinuousBuild/fast

#=============================================================================
# Target rules for targets named NightlyConfigure

# Build rule for target.
NightlyConfigure: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 NightlyConfigure
.PHONY : NightlyConfigure

# fast build rule for target.
NightlyConfigure/fast:
	$(MAKE) -f CMakeFiles/NightlyConfigure.dir/build.make CMakeFiles/NightlyConfigure.dir/build
.PHONY : NightlyConfigure/fast

#=============================================================================
# Target rules for targets named NightlyMemoryCheck

# Build rule for target.
NightlyMemoryCheck: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 NightlyMemoryCheck
.PHONY : NightlyMemoryCheck

# fast build rule for target.
NightlyMemoryCheck/fast:
	$(MAKE) -f CMakeFiles/NightlyMemoryCheck.dir/build.make CMakeFiles/NightlyMemoryCheck.dir/build
.PHONY : NightlyMemoryCheck/fast

#=============================================================================
# Target rules for targets named ExperimentalTest

# Build rule for target.
ExperimentalTest: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 ExperimentalTest
.PHONY : ExperimentalTest

# fast build rule for target.
ExperimentalTest/fast:
	$(MAKE) -f CMakeFiles/ExperimentalTest.dir/build.make CMakeFiles/ExperimentalTest.dir/build
.PHONY : ExperimentalTest/fast

#=============================================================================
# Target rules for targets named ContinuousUpdate

# Build rule for target.
ContinuousUpdate: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 ContinuousUpdate
.PHONY : ContinuousUpdate

# fast build rule for target.
ContinuousUpdate/fast:
	$(MAKE) -f CMakeFiles/ContinuousUpdate.dir/build.make CMakeFiles/ContinuousUpdate.dir/build
.PHONY : ContinuousUpdate/fast

#=============================================================================
# Target rules for targets named NightlyUpdate

# Build rule for target.
NightlyUpdate: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 NightlyUpdate
.PHONY : NightlyUpdate

# fast build rule for target.
NightlyUpdate/fast:
	$(MAKE) -f CMakeFiles/NightlyUpdate.dir/build.make CMakeFiles/NightlyUpdate.dir/build
.PHONY : NightlyUpdate/fast

#=============================================================================
# Target rules for targets named ExperimentalMemCheck

# Build rule for target.
ExperimentalMemCheck: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 ExperimentalMemCheck
.PHONY : ExperimentalMemCheck

# fast build rule for target.
ExperimentalMemCheck/fast:
	$(MAKE) -f CMakeFiles/ExperimentalMemCheck.dir/build.make CMakeFiles/ExperimentalMemCheck.dir/build
.PHONY : ExperimentalMemCheck/fast

#=============================================================================
# Target rules for targets named ExperimentalSubmit

# Build rule for target.
ExperimentalSubmit: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 ExperimentalSubmit
.PHONY : ExperimentalSubmit

# fast build rule for target.
ExperimentalSubmit/fast:
	$(MAKE) -f CMakeFiles/ExperimentalSubmit.dir/build.make CMakeFiles/ExperimentalSubmit.dir/build
.PHONY : ExperimentalSubmit/fast

#=============================================================================
# Target rules for targets named Experimental

# Build rule for target.
Experimental: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 Experimental
.PHONY : Experimental

# fast build rule for target.
Experimental/fast:
	$(MAKE) -f CMakeFiles/Experimental.dir/build.make CMakeFiles/Experimental.dir/build
.PHONY : Experimental/fast

#=============================================================================
# Target rules for targets named ContinuousCoverage

# Build rule for target.
ContinuousCoverage: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 ContinuousCoverage
.PHONY : ContinuousCoverage

# fast build rule for target.
ContinuousCoverage/fast:
	$(MAKE) -f CMakeFiles/ContinuousCoverage.dir/build.make CMakeFiles/ContinuousCoverage.dir/build
.PHONY : ContinuousCoverage/fast

#=============================================================================
# Target rules for targets named ExperimentalConfigure

# Build rule for target.
ExperimentalConfigure: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 ExperimentalConfigure
.PHONY : ExperimentalConfigure

# fast build rule for target.
ExperimentalConfigure/fast:
	$(MAKE) -f CMakeFiles/ExperimentalConfigure.dir/build.make CMakeFiles/ExperimentalConfigure.dir/build
.PHONY : ExperimentalConfigure/fast

#=============================================================================
# Target rules for targets named Continuous

# Build rule for target.
Continuous: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 Continuous
.PHONY : Continuous

# fast build rule for target.
Continuous/fast:
	$(MAKE) -f CMakeFiles/Continuous.dir/build.make CMakeFiles/Continuous.dir/build
.PHONY : Continuous/fast

#=============================================================================
# Target rules for targets named Nightly

# Build rule for target.
Nightly: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 Nightly
.PHONY : Nightly

# fast build rule for target.
Nightly/fast:
	$(MAKE) -f CMakeFiles/Nightly.dir/build.make CMakeFiles/Nightly.dir/build
.PHONY : Nightly/fast

#=============================================================================
# Target rules for targets named NightlySubmit

# Build rule for target.
NightlySubmit: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 NightlySubmit
.PHONY : NightlySubmit

# fast build rule for target.
NightlySubmit/fast:
	$(MAKE) -f CMakeFiles/NightlySubmit.dir/build.make CMakeFiles/NightlySubmit.dir/build
.PHONY : NightlySubmit/fast

#=============================================================================
# Target rules for targets named NightlyCoverage

# Build rule for target.
NightlyCoverage: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 NightlyCoverage
.PHONY : NightlyCoverage

# fast build rule for target.
NightlyCoverage/fast:
	$(MAKE) -f CMakeFiles/NightlyCoverage.dir/build.make CMakeFiles/NightlyCoverage.dir/build
.PHONY : NightlyCoverage/fast

#=============================================================================
# Target rules for targets named ExperimentalStart

# Build rule for target.
ExperimentalStart: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 ExperimentalStart
.PHONY : ExperimentalStart

# fast build rule for target.
ExperimentalStart/fast:
	$(MAKE) -f CMakeFiles/ExperimentalStart.dir/build.make CMakeFiles/ExperimentalStart.dir/build
.PHONY : ExperimentalStart/fast

#=============================================================================
# Target rules for targets named NightlyBuild

# Build rule for target.
NightlyBuild: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 NightlyBuild
.PHONY : NightlyBuild

# fast build rule for target.
NightlyBuild/fast:
	$(MAKE) -f CMakeFiles/NightlyBuild.dir/build.make CMakeFiles/NightlyBuild.dir/build
.PHONY : NightlyBuild/fast

#=============================================================================
# Target rules for targets named ExperimentalBuild

# Build rule for target.
ExperimentalBuild: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 ExperimentalBuild
.PHONY : ExperimentalBuild

# fast build rule for target.
ExperimentalBuild/fast:
	$(MAKE) -f CMakeFiles/ExperimentalBuild.dir/build.make CMakeFiles/ExperimentalBuild.dir/build
.PHONY : ExperimentalBuild/fast

#=============================================================================
# Target rules for targets named ExperimentalUpdate

# Build rule for target.
ExperimentalUpdate: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 ExperimentalUpdate
.PHONY : ExperimentalUpdate

# fast build rule for target.
ExperimentalUpdate/fast:
	$(MAKE) -f CMakeFiles/ExperimentalUpdate.dir/build.make CMakeFiles/ExperimentalUpdate.dir/build
.PHONY : ExperimentalUpdate/fast

#=============================================================================
# Target rules for targets named ContinuousStart

# Build rule for target.
ContinuousStart: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 ContinuousStart
.PHONY : ContinuousStart

# fast build rule for target.
ContinuousStart/fast:
	$(MAKE) -f CMakeFiles/ContinuousStart.dir/build.make CMakeFiles/ContinuousStart.dir/build
.PHONY : ContinuousStart/fast

#=============================================================================
# Target rules for targets named ContinuousMemCheck

# Build rule for target.
ContinuousMemCheck: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 ContinuousMemCheck
.PHONY : ContinuousMemCheck

# fast build rule for target.
ContinuousMemCheck/fast:
	$(MAKE) -f CMakeFiles/ContinuousMemCheck.dir/build.make CMakeFiles/ContinuousMemCheck.dir/build
.PHONY : ContinuousMemCheck/fast

#=============================================================================
# Target rules for targets named ContinuousTest

# Build rule for target.
ContinuousTest: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 ContinuousTest
.PHONY : ContinuousTest

# fast build rule for target.
ContinuousTest/fast:
	$(MAKE) -f CMakeFiles/ContinuousTest.dir/build.make CMakeFiles/ContinuousTest.dir/build
.PHONY : ContinuousTest/fast

#=============================================================================
# Target rules for targets named ContinuousSubmit

# Build rule for target.
ContinuousSubmit: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 ContinuousSubmit
.PHONY : ContinuousSubmit

# fast build rule for target.
ContinuousSubmit/fast:
	$(MAKE) -f CMakeFiles/ContinuousSubmit.dir/build.make CMakeFiles/ContinuousSubmit.dir/build
.PHONY : ContinuousSubmit/fast

#=============================================================================
# Target rules for targets named NightlyStart

# Build rule for target.
NightlyStart: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 NightlyStart
.PHONY : NightlyStart

# fast build rule for target.
NightlyStart/fast:
	$(MAKE) -f CMakeFiles/NightlyStart.dir/build.make CMakeFiles/NightlyStart.dir/build
.PHONY : NightlyStart/fast

#=============================================================================
# Target rules for targets named ExperimentalCoverage

# Build rule for target.
ExperimentalCoverage: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 ExperimentalCoverage
.PHONY : ExperimentalCoverage

# fast build rule for target.
ExperimentalCoverage/fast:
	$(MAKE) -f CMakeFiles/ExperimentalCoverage.dir/build.make CMakeFiles/ExperimentalCoverage.dir/build
.PHONY : ExperimentalCoverage/fast

#=============================================================================
# Target rules for targets named 2DSur

# Build rule for target.
2DSur: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 2DSur
.PHONY : 2DSur

# fast build rule for target.
2DSur/fast:
	$(MAKE) -f CMakeFiles/2DSur.dir/build.make CMakeFiles/2DSur.dir/build
.PHONY : 2DSur/fast

#=============================================================================
# Target rules for targets named 2DSur_autogen

# Build rule for target.
2DSur_autogen: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 2DSur_autogen
.PHONY : 2DSur_autogen

# fast build rule for target.
2DSur_autogen/fast:
	$(MAKE) -f CMakeFiles/2DSur_autogen.dir/build.make CMakeFiles/2DSur_autogen.dir/build
.PHONY : 2DSur_autogen/fast

2DSur_autogen/mocs_compilation.o: 2DSur_autogen/mocs_compilation.cpp.o

.PHONY : 2DSur_autogen/mocs_compilation.o

# target to build an object file
2DSur_autogen/mocs_compilation.cpp.o:
	$(MAKE) -f CMakeFiles/2DSur.dir/build.make CMakeFiles/2DSur.dir/2DSur_autogen/mocs_compilation.cpp.o
.PHONY : 2DSur_autogen/mocs_compilation.cpp.o

2DSur_autogen/mocs_compilation.i: 2DSur_autogen/mocs_compilation.cpp.i

.PHONY : 2DSur_autogen/mocs_compilation.i

# target to preprocess a source file
2DSur_autogen/mocs_compilation.cpp.i:
	$(MAKE) -f CMakeFiles/2DSur.dir/build.make CMakeFiles/2DSur.dir/2DSur_autogen/mocs_compilation.cpp.i
.PHONY : 2DSur_autogen/mocs_compilation.cpp.i

2DSur_autogen/mocs_compilation.s: 2DSur_autogen/mocs_compilation.cpp.s

.PHONY : 2DSur_autogen/mocs_compilation.s

# target to generate assembly for a file
2DSur_autogen/mocs_compilation.cpp.s:
	$(MAKE) -f CMakeFiles/2DSur.dir/build.make CMakeFiles/2DSur.dir/2DSur_autogen/mocs_compilation.cpp.s
.PHONY : 2DSur_autogen/mocs_compilation.cpp.s

src/MainWindow.o: src/MainWindow.cpp.o

.PHONY : src/MainWindow.o

# target to build an object file
src/MainWindow.cpp.o:
	$(MAKE) -f CMakeFiles/2DSur.dir/build.make CMakeFiles/2DSur.dir/src/MainWindow.cpp.o
.PHONY : src/MainWindow.cpp.o

src/MainWindow.i: src/MainWindow.cpp.i

.PHONY : src/MainWindow.i

# target to preprocess a source file
src/MainWindow.cpp.i:
	$(MAKE) -f CMakeFiles/2DSur.dir/build.make CMakeFiles/2DSur.dir/src/MainWindow.cpp.i
.PHONY : src/MainWindow.cpp.i

src/MainWindow.s: src/MainWindow.cpp.s

.PHONY : src/MainWindow.s

# target to generate assembly for a file
src/MainWindow.cpp.s:
	$(MAKE) -f CMakeFiles/2DSur.dir/build.make CMakeFiles/2DSur.dir/src/MainWindow.cpp.s
.PHONY : src/MainWindow.cpp.s

src/game/Chunk.o: src/game/Chunk.cpp.o

.PHONY : src/game/Chunk.o

# target to build an object file
src/game/Chunk.cpp.o:
	$(MAKE) -f CMakeFiles/2DSur.dir/build.make CMakeFiles/2DSur.dir/src/game/Chunk.cpp.o
.PHONY : src/game/Chunk.cpp.o

src/game/Chunk.i: src/game/Chunk.cpp.i

.PHONY : src/game/Chunk.i

# target to preprocess a source file
src/game/Chunk.cpp.i:
	$(MAKE) -f CMakeFiles/2DSur.dir/build.make CMakeFiles/2DSur.dir/src/game/Chunk.cpp.i
.PHONY : src/game/Chunk.cpp.i

src/game/Chunk.s: src/game/Chunk.cpp.s

.PHONY : src/game/Chunk.s

# target to generate assembly for a file
src/game/Chunk.cpp.s:
	$(MAKE) -f CMakeFiles/2DSur.dir/build.make CMakeFiles/2DSur.dir/src/game/Chunk.cpp.s
.PHONY : src/game/Chunk.cpp.s

src/game/CoreGameObject.o: src/game/CoreGameObject.cpp.o

.PHONY : src/game/CoreGameObject.o

# target to build an object file
src/game/CoreGameObject.cpp.o:
	$(MAKE) -f CMakeFiles/2DSur.dir/build.make CMakeFiles/2DSur.dir/src/game/CoreGameObject.cpp.o
.PHONY : src/game/CoreGameObject.cpp.o

src/game/CoreGameObject.i: src/game/CoreGameObject.cpp.i

.PHONY : src/game/CoreGameObject.i

# target to preprocess a source file
src/game/CoreGameObject.cpp.i:
	$(MAKE) -f CMakeFiles/2DSur.dir/build.make CMakeFiles/2DSur.dir/src/game/CoreGameObject.cpp.i
.PHONY : src/game/CoreGameObject.cpp.i

src/game/CoreGameObject.s: src/game/CoreGameObject.cpp.s

.PHONY : src/game/CoreGameObject.s

# target to generate assembly for a file
src/game/CoreGameObject.cpp.s:
	$(MAKE) -f CMakeFiles/2DSur.dir/build.make CMakeFiles/2DSur.dir/src/game/CoreGameObject.cpp.s
.PHONY : src/game/CoreGameObject.cpp.s

src/game/Enviroment.o: src/game/Enviroment.cpp.o

.PHONY : src/game/Enviroment.o

# target to build an object file
src/game/Enviroment.cpp.o:
	$(MAKE) -f CMakeFiles/2DSur.dir/build.make CMakeFiles/2DSur.dir/src/game/Enviroment.cpp.o
.PHONY : src/game/Enviroment.cpp.o

src/game/Enviroment.i: src/game/Enviroment.cpp.i

.PHONY : src/game/Enviroment.i

# target to preprocess a source file
src/game/Enviroment.cpp.i:
	$(MAKE) -f CMakeFiles/2DSur.dir/build.make CMakeFiles/2DSur.dir/src/game/Enviroment.cpp.i
.PHONY : src/game/Enviroment.cpp.i

src/game/Enviroment.s: src/game/Enviroment.cpp.s

.PHONY : src/game/Enviroment.s

# target to generate assembly for a file
src/game/Enviroment.cpp.s:
	$(MAKE) -f CMakeFiles/2DSur.dir/build.make CMakeFiles/2DSur.dir/src/game/Enviroment.cpp.s
.PHONY : src/game/Enviroment.cpp.s

src/game/GameCore.o: src/game/GameCore.cpp.o

.PHONY : src/game/GameCore.o

# target to build an object file
src/game/GameCore.cpp.o:
	$(MAKE) -f CMakeFiles/2DSur.dir/build.make CMakeFiles/2DSur.dir/src/game/GameCore.cpp.o
.PHONY : src/game/GameCore.cpp.o

src/game/GameCore.i: src/game/GameCore.cpp.i

.PHONY : src/game/GameCore.i

# target to preprocess a source file
src/game/GameCore.cpp.i:
	$(MAKE) -f CMakeFiles/2DSur.dir/build.make CMakeFiles/2DSur.dir/src/game/GameCore.cpp.i
.PHONY : src/game/GameCore.cpp.i

src/game/GameCore.s: src/game/GameCore.cpp.s

.PHONY : src/game/GameCore.s

# target to generate assembly for a file
src/game/GameCore.cpp.s:
	$(MAKE) -f CMakeFiles/2DSur.dir/build.make CMakeFiles/2DSur.dir/src/game/GameCore.cpp.s
.PHONY : src/game/GameCore.cpp.s

src/game/Player.o: src/game/Player.cpp.o

.PHONY : src/game/Player.o

# target to build an object file
src/game/Player.cpp.o:
	$(MAKE) -f CMakeFiles/2DSur.dir/build.make CMakeFiles/2DSur.dir/src/game/Player.cpp.o
.PHONY : src/game/Player.cpp.o

src/game/Player.i: src/game/Player.cpp.i

.PHONY : src/game/Player.i

# target to preprocess a source file
src/game/Player.cpp.i:
	$(MAKE) -f CMakeFiles/2DSur.dir/build.make CMakeFiles/2DSur.dir/src/game/Player.cpp.i
.PHONY : src/game/Player.cpp.i

src/game/Player.s: src/game/Player.cpp.s

.PHONY : src/game/Player.s

# target to generate assembly for a file
src/game/Player.cpp.s:
	$(MAKE) -f CMakeFiles/2DSur.dir/build.make CMakeFiles/2DSur.dir/src/game/Player.cpp.s
.PHONY : src/game/Player.cpp.s

src/main.o: src/main.cpp.o

.PHONY : src/main.o

# target to build an object file
src/main.cpp.o:
	$(MAKE) -f CMakeFiles/2DSur.dir/build.make CMakeFiles/2DSur.dir/src/main.cpp.o
.PHONY : src/main.cpp.o

src/main.i: src/main.cpp.i

.PHONY : src/main.i

# target to preprocess a source file
src/main.cpp.i:
	$(MAKE) -f CMakeFiles/2DSur.dir/build.make CMakeFiles/2DSur.dir/src/main.cpp.i
.PHONY : src/main.cpp.i

src/main.s: src/main.cpp.s

.PHONY : src/main.s

# target to generate assembly for a file
src/main.cpp.s:
	$(MAKE) -f CMakeFiles/2DSur.dir/build.make CMakeFiles/2DSur.dir/src/main.cpp.s
.PHONY : src/main.cpp.s

src/utils/Spritesheet.o: src/utils/Spritesheet.cpp.o

.PHONY : src/utils/Spritesheet.o

# target to build an object file
src/utils/Spritesheet.cpp.o:
	$(MAKE) -f CMakeFiles/2DSur.dir/build.make CMakeFiles/2DSur.dir/src/utils/Spritesheet.cpp.o
.PHONY : src/utils/Spritesheet.cpp.o

src/utils/Spritesheet.i: src/utils/Spritesheet.cpp.i

.PHONY : src/utils/Spritesheet.i

# target to preprocess a source file
src/utils/Spritesheet.cpp.i:
	$(MAKE) -f CMakeFiles/2DSur.dir/build.make CMakeFiles/2DSur.dir/src/utils/Spritesheet.cpp.i
.PHONY : src/utils/Spritesheet.cpp.i

src/utils/Spritesheet.s: src/utils/Spritesheet.cpp.s

.PHONY : src/utils/Spritesheet.s

# target to generate assembly for a file
src/utils/Spritesheet.cpp.s:
	$(MAKE) -f CMakeFiles/2DSur.dir/build.make CMakeFiles/2DSur.dir/src/utils/Spritesheet.cpp.s
.PHONY : src/utils/Spritesheet.cpp.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... test"
	@echo "... package_source"
	@echo "... edit_cache"
	@echo "... NightlyMemCheck"
	@echo "... NightlyTest"
	@echo "... ContinuousConfigure"
	@echo "... ContinuousBuild"
	@echo "... NightlyConfigure"
	@echo "... NightlyMemoryCheck"
	@echo "... ExperimentalTest"
	@echo "... ContinuousUpdate"
	@echo "... NightlyUpdate"
	@echo "... ExperimentalMemCheck"
	@echo "... ExperimentalSubmit"
	@echo "... Experimental"
	@echo "... ContinuousCoverage"
	@echo "... ExperimentalConfigure"
	@echo "... Continuous"
	@echo "... Nightly"
	@echo "... NightlySubmit"
	@echo "... NightlyCoverage"
	@echo "... ExperimentalStart"
	@echo "... package"
	@echo "... NightlyBuild"
	@echo "... ExperimentalBuild"
	@echo "... ExperimentalUpdate"
	@echo "... ContinuousStart"
	@echo "... ContinuousMemCheck"
	@echo "... ContinuousTest"
	@echo "... ContinuousSubmit"
	@echo "... NightlyStart"
	@echo "... ExperimentalCoverage"
	@echo "... 2DSur"
	@echo "... 2DSur_autogen"
	@echo "... 2DSur_autogen/mocs_compilation.o"
	@echo "... 2DSur_autogen/mocs_compilation.i"
	@echo "... 2DSur_autogen/mocs_compilation.s"
	@echo "... src/MainWindow.o"
	@echo "... src/MainWindow.i"
	@echo "... src/MainWindow.s"
	@echo "... src/game/Chunk.o"
	@echo "... src/game/Chunk.i"
	@echo "... src/game/Chunk.s"
	@echo "... src/game/CoreGameObject.o"
	@echo "... src/game/CoreGameObject.i"
	@echo "... src/game/CoreGameObject.s"
	@echo "... src/game/Enviroment.o"
	@echo "... src/game/Enviroment.i"
	@echo "... src/game/Enviroment.s"
	@echo "... src/game/GameCore.o"
	@echo "... src/game/GameCore.i"
	@echo "... src/game/GameCore.s"
	@echo "... src/game/Player.o"
	@echo "... src/game/Player.i"
	@echo "... src/game/Player.s"
	@echo "... src/main.o"
	@echo "... src/main.i"
	@echo "... src/main.s"
	@echo "... src/utils/Spritesheet.o"
	@echo "... src/utils/Spritesheet.i"
	@echo "... src/utils/Spritesheet.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -S$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

