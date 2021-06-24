#include "MainWindow.h"
#include <iostream>
#include "game/GameCore.h"

MainWindow::MainWindow()
    : QMainWindow()
{
    setWindowTitle("2dsur");
    setFixedSize(1200, 700);

    gc = new GameCore(this);
    gc->setGeometry(geometry());

    show();
}

void MainWindow::resizeEvent(QResizeEvent *)
{
    
}