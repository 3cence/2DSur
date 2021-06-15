#pragma once
#include <QWidget>
#include <QTimer>

class GameCore : public QWidget
{
    Q_OBJECT

    int ticksToSkip = 1;            // The Amount of ticks to skip before doing next game tick
    int ticksSinceLastTick = 0;     // The Amount of ticks that have been skipped
    unsigned long long msUptime = 0;         // The uptime of the program
    unsigned long long msOfLastTick = 0;     // The timestamp of the last tick check
    int targetTps = 60;             // The... target ticks per second
    int ticksSinceLastCheck = 0;    // The amount of GAME ticks since last check 
    int correction = 0;             // The % the ticksToSkip is off

    int realTps = 0;
    unsigned long long msOfLastTps = 0;

    QTimer *ticker;
    QTimer *uptime;
public:
    GameCore(QWidget*);

protected:
    void paintEvent(QPaintEvent*) override;

public slots:
    void tick();
    void increaceMs();
};