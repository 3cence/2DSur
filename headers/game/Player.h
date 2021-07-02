#pragma once
#include <QPainter>
#include "game/CoreGameObject.h"

class Player : public CoreGameObject
{
public:
    Player(int);

    void tick() override;
    void render(QPainter&) override;
};