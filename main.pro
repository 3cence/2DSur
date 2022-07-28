QT += core gui widgets
CONFIG += debug

INCLUDEPATH +=\
    headers/

SOURCES += \
    src/main.cpp\
    src/MainWindow.cpp\
    src/game/GameCore.cpp\
    src/game/CoreGameObject.cpp\
    src/game/Enviroment.cpp\
    src/game/Chunk.cpp\
    src/game/Player.cpp\
    src/utils/Spritesheet.cpp

HEADERS +=\
    headers/MainWindow.h\
    headers/game/GameCore.h\
    headers/game/CoreGameObject.h\
    headers/game/Enviroment.h\
    headers/game/Chunk.h\
    headers/game/Player.h\
    headers/utils/Spritesheet.h


DESTDIR += bin/dist
OBJECTS_DIR += bin/
