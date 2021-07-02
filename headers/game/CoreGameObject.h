#pragma once
#include <QPainter>
#include <QPixmap>
#include <vector>

class CoreGameObject
{
    long UUID;

public:
    static std::vector<CoreGameObject*> CoreGameObjects;
    static std::vector<CoreGameObject*> OrderedCoreGameObjects;
    static bool Modified;
    int objectPriority;

    CoreGameObject(int);
    virtual ~CoreGameObject();

    virtual void tick();
    virtual void render(QPainter&);
};