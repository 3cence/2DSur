#pragma once
#include <QWidget>
#include <QTimer>

class GameCore : public QWidget
{
    Q_OBJECT

    QTimer *ticker;
    int totalTicks;
public:
    GameCore(QWidget*);

protected:
    void paintEvent(QPaintEvent*) override;

public slots:
    void tick();
};
