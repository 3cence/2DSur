#include "game/GameCore.h"
#include <iostream>
#include <QWidget>
#include <QPainter>
#include <QTime>

GameCore::GameCore(QWidget *parent)
    : QWidget(parent)
{
    ticker = new QTimer;
    uptime = new QTimer;
    ticker->setInterval(0);
    uptime->setInterval(1);
    QObject::connect(ticker, SIGNAL(timeout()), this, SLOT(tick()));
    QObject::connect(uptime, SIGNAL(timeout()), this, SLOT(increaceMs()));
    ticker->start();
    uptime->start();
}

void GameCore::paintEvent(QPaintEvent *)
{
    QPainter pnt(this);
    pnt.setBrush(Qt::blue);
    pnt.drawRect(geometry());
}

void GameCore::tick()
{
    if (ticksSinceLastTick >= ticksToSkip)
    {
        ticksSinceLastCheck++;
        realTps++;
        ticksSinceLastTick = 0;

        if (msUptime - msOfLastTick >= 98)
        {
            // std::cout << "the Ticks: " << ticksSinceLastCheck << std::endl;
            correction = ticksSinceLastCheck / (targetTps / 10 - 1);
            ticksToSkip *= correction;
            ticksSinceLastCheck = 0;
            msOfLastTick = msUptime;
        }
    }
    if (msUptime - msOfLastTps >= 1000)
    {
        std::cout << "the Ticks: " << realTps << std::endl;
        realTps = 0;
        msOfLastTps = msUptime;
    }
    ticksSinceLastTick++;
}

void GameCore::increaceMs()
{
    msUptime++;
}