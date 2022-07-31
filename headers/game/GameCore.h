#pragma once
#include "game/Enviroment.h"
#include "game/Player.h"
#include <QWidget>
#include <QTimer>

class GameCore : public QWidget
{
    Q_OBJECT
    static GameCore *kInstance;

    int tps = 0;

    QTimer *ticker;
    QTimer *secondUpdates;
public:
    QWidget *parent;
    Enviroment *world;
    Player *player;

    static GameCore* getCore();

    GameCore(QWidget*);
    virtual ~GameCore();

protected:
    void paintEvent(QPaintEvent*) override;

public slots:
    void tick();
    void onSec();
};