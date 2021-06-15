QT += core gui widgets
CONFIG += debug

INCLUDEPATH +=\
    headers/

SOURCES += \
    src/main.cpp\
    src/MainWindow.cpp\
    src/game/GameCore.cpp\
    src/game/CoreGameObject.cpp

HEADERS +=\
    headers/MainWindow.h\
    headers/game/GameCore.h\
    src/game/CoreGameObject.h


DESTDIR += bin/dist
OBJECTS_DIR += bin/
