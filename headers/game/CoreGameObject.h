#pragma once
#include "GameCore.h"
#include <QPainter>
#include <QPixmap>
#include <vector>

class CoreGameObject
{
    long UUID;
    QPixmap texture;

public:
    static std::vector<CoreGameObject*> CoreGameObjects;

    CoreGameObject();
    virtual ~CoreGameObject();

    virtual void tick(GameCore*);
    virtual void render(QPainter*);
};