#include "game/GameCore.h"
#include "game/CoreGameObject.h"
#include "game/Enviroment.h"
#include "game/Player.h"
#include <iostream>
#include <string>
#include <QWidget>
#include <QPainter>
#include <QTime>

GameCore *GameCore::kInstance = nullptr;

GameCore::GameCore(QWidget *parent)
    : QWidget(parent)
{
    if (kInstance == nullptr)
    {
        this->parent = parent; 
        kInstance = this;
        ticker = new QTimer;
        secondUpdates = new QTimer;
        ticker->setInterval(16);
        secondUpdates->setInterval(1000);
        QObject::connect(ticker, SIGNAL(timeout()), this, SLOT(tick()));
        QObject::connect(secondUpdates, SIGNAL(timeout()), this, SLOT(onSec()));
        ticker->start();
        secondUpdates->start();

        player = new Player;
        world = new Enviroment;
    }
    else
    {
        throw "A game core already exists! Only one is allowed";
    }
}

void GameCore::paintEvent(QPaintEvent *)
{
    QPainter pnt(this);

    //This rectangle shows if something went wrong
    pnt.setBrush(Qt::blue);
    pnt.drawRect(geometry());

    for (int i = 0; i < (int)CoreGameObject::CoreGameObjects.size(); i++)
    {
        CoreGameObject::CoreGameObjects[i]->render(pnt);
    }
}

void GameCore::tick()
{
    tps++;

    for (int i = 0; i < (int)CoreGameObject::CoreGameObjects.size(); i++)
    {
        CoreGameObject::CoreGameObjects[i]->tick();
    }

    //makes sure the game renders the right things on the correct layers
    if (CoreGameObject::Modified)
    {
        std::cout << "resorting objects\n";
        bool noSwaps = false;

        while (!noSwaps)
        {
            noSwaps = true;
            for (int i = 0; i < CoreGameObject::CoreGameObjects.size() - 1; i++)
            {
                if (CoreGameObject::CoreGameObjects[i]->objectPriority > CoreGameObject::CoreGameObjects[i + 1]->objectPriority)
                {
                    std::swap(CoreGameObject::CoreGameObjects[i]->objectPriority,
                        CoreGameObject::CoreGameObjects[i + 1]->objectPriority);
                    noSwaps = false;
                }
            }
        }
        
        CoreGameObject::Modified = false;
    }

    repaint();
}

void GameCore::onSec()
{
    parent->setWindowTitle((std::string("2DSur: ") + std::to_string(tps) + std::string(" Tps")).c_str());
    // std::cout << tps << std::endl;
    tps = 0;
}

GameCore* GameCore::getCore()
{
    return kInstance;
}

GameCore::~GameCore()
{
    std::cout << "Ending the World\n";
    int total = CoreGameObject::CoreGameObjects.size();
    for(int i = 0; i < total; i++)
    {
        delete CoreGameObject::CoreGameObjects[0];
    }
}