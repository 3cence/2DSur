#pragma once
#include <QWidget>
#include <QTimer>

class GameCore : public QWidget
{
    Q_OBJECT

    int tps = 0;

    QTimer *ticker;
    QTimer *secondUpdates;
public:
    QWidget *parent;

    GameCore(QWidget*);

protected:
    void paintEvent(QPaintEvent*) override;

public slots:
    void tick();
    void onSec();
};