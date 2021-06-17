#pragma once
#include <QPainter>
#include <QPixmap>
#include <vector>

class CoreGameObject
{
    long UUID;

public:
    static std::vector<CoreGameObject*> CoreGameObjects;

    CoreGameObject();
    virtual ~CoreGameObject();

    virtual void tick();
    virtual void render(QPainter&);
};