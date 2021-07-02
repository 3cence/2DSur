#include "game/CoreGameObject.h"
#include <iostream>
#include <vector>

std::vector<CoreGameObject*> CoreGameObject::CoreGameObjects = {};
std::vector<CoreGameObject*> CoreGameObject::OrderedCoreGameObjects = {};
bool CoreGameObject::Modified = true;

CoreGameObject::CoreGameObject(int priority)
{
    UUID = rand();
    UUID *= rand();
    UUID *= rand();

    objectPriority = priority;

    std::cout << "UUID: " << UUID << std::endl;

    CoreGameObjects.push_back(this);
    Modified = true;
}

CoreGameObject::~CoreGameObject()
{
    for (int i = 0; i < (int)CoreGameObjects.size(); i++)
        {
            if (CoreGameObjects[i]->UUID == UUID)
            {
                CoreGameObjects.erase(CoreGameObjects.begin() + i);
                Modified = true;
                std::cout << "UUID " << UUID << " Destroyed. " << CoreGameObjects.size() << "\n";
                break;
            }
        }
}

void CoreGameObject::tick()
{
    std::cout << "Core Tick (This does nothing!)\n";
}

void CoreGameObject::render(QPainter&)
{
    std::cout << "Core Render (This does nothing!)\n";
}
