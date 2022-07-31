#pragma once
#include <QMainWindow>
#include <QResizeEvent>
#include <QObject>
#include "game/GameCore.h"

class MainWindow : public QMainWindow
{
    Q_OBJECT

    GameCore *gc;
    
public:
    MainWindow();
    virtual ~MainWindow();

    void resizeEvent(QResizeEvent*) override;
};