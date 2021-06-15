QT += core gui widgets
CONFIG += debug

INCLUDEPATH +=\
    headers/

SOURCES += \
    src/main.cpp\
    src/MainWindow.cpp\
    src/game/GameCore.cpp

HEADERS +=\
    headers/MainWindow.h\
    headers/game/GameCore.h


DESTDIR += bin/dist
OBJECTS_DIR += bin/
