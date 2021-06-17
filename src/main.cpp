//this solves some cirular dependancy issues

#include <iostream>
#include <QApplication>
#include <QPushButton>
#include <QMainWindow>
#include <QObject>
#include "MainWindow.h"

int main(int argc, char **argv)
{
    QApplication app(argc, argv);
    MainWindow mw;
    app.exec();
    return 0;
}