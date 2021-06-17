#pragma once
#include "game/GameCore.h"
#include "game/CoreGameObject.h"
#include "game/Chunk.h"
#include <QPainter>
#include <unordered_map>

class Enviroment : public CoreGameObject
{
    // std::unordered_map<QPoint, Chunk> chunks;

public:
    Enviroment();
    ~Enviroment() override;

    void tick(GameCore*) override;
    void render(QPainter&) override;
};