#include "game/GameCore.h"
#include <iostream>
#include <QWidget>
#include <QPainter>

GameCore::GameCore(QWidget *parent)
    : QWidget(parent)
{
    ticker = new QTimer;
    totalTicks = 0;
    ticker->setInterval(0);
    QObject::connect(ticker, SIGNAL(timeout()), this, SLOT(tick()));
    ticker->start();
}

void GameCore::paintEvent(QPaintEvent *)
{
    std::cout << "DOIN YA RENDER DOIN DOIN YA RENDER\n";
    QPainter pnt(this);
    pnt.setBrush(Qt::blue);
    pnt.drawRect(geometry());
}

void GameCore::tick()
{
    std::cout << "TICK HATH HAPPENED " << totalTicks << std::endl;;
    totalTicks++;
}