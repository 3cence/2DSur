#pragma once
#include <QPainter>
#include <QPixmap>
#include <vector>

class CoreGameObject
{
    long UUID;

public:
    static std::vector<CoreGameObject*> CoreGameObjects;
    int objectPriority;

    CoreGameObject(int);
    virtual ~CoreGameObject();

    virtual void tick();
    virtual void render(QPainter&);
};