#pragma once
#include <QMainWindow>
#include <QResizeEvent>
#include "game/GameCore.h"

class MainWindow : public QMainWindow
{
    Q_OBJECT

    GameCore *gc;
    
public:
    MainWindow();

    void resizeEvent(QResizeEvent*) override;
};