cmake_minimum_required(VERSION 3.8.0 FATAL_ERROR)
project(2DSur VERSION 0.1.0)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)
include(CTest)
enable_testing()


include_directories(headers/)

find_package(Qt5 COMPONENTS Core Widgets Gui REQUIRED)

add_executable(2DSur src/main.cpp
src/MainWindow.cpp
headers/MainWindow.h
src/game/Chunk.cpp
src/game/CoreGameObject.cpp
src/game/Enviroment.cpp
src/game/GameCore.cpp
headers/game/GameCore.h
src/game/Player.cpp
src/utils/Spritesheet.cpp
headers/utils/AssetPath.h)
target_link_libraries(2DSur Qt5::Core Qt5::Widgets Qt5::Gui)

set(CPACK_PROJECT_NAME ${PROJECT_NAME})
set(CPACK_PROJECT_VERSION ${PROJECT_VERSION})
include(CPack)
