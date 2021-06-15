#include "game/CoreGameObject.h"
#include <iostream>
#include <vector>

std::vector<CoreGameObject*> CoreGameObject::CoreGameObjects = {};

CoreGameObject::CoreGameObject()
{
    UUID = rand();
    UUID *= rand();
    UUID *= rand();

    std::cout << "UUID: " << UUID << std::endl;

    CoreGameObjects.push_back(this);
}

CoreGameObject::~CoreGameObject()
{
    for (int i = 0; i < (int)CoreGameObjects.size(); i++)
        {
            if (CoreGameObjects[i]->UUID == UUID)
            {
                CoreGameObjects.erase(CoreGameObjects.begin() + i);
                std::cout << "UUID " << UUID << " Destroyed. " << CoreGameObjects.size() << "\n";
                break;
            }
        }
}

void CoreGameObject::tick(GameCore *)
{
    std::cout << "Core Tick (This does nothing!)\n";
}

void CoreGameObject::render(QPainter *)
{

}
