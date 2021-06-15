#include "game/GameCore.h"
#include <iostream>
#include <string>
#include <QWidget>
#include <QPainter>
#include <QTime>

GameCore::GameCore(QWidget *parent)
    : QWidget(parent)
{
    this->parent = parent; 
    ticker = new QTimer;
    secondUpdates = new QTimer;
    ticker->setInterval(16);
    secondUpdates->setInterval(1000);
    QObject::connect(ticker, SIGNAL(timeout()), this, SLOT(tick()));
    QObject::connect(secondUpdates, SIGNAL(timeout()), this, SLOT(onSec()));
    ticker->start();
    secondUpdates->start();
}

void GameCore::paintEvent(QPaintEvent *)
{
    QPainter pnt(this);
    pnt.setBrush(Qt::blue);
    pnt.drawRect(geometry());
}

void GameCore::tick()
{
    tps++;
}

void GameCore::onSec()
{
    parent->setWindowTitle((std::string("2DSur: ") + std::to_string(tps) + std::string(" Tps")).c_str());
    tps = 0;
}