#pragma once
#include "game/CoreGameObject.h"
#include "game/Chunk.h"
#include <vector>
#include <QPainter>
#include <QPixmap>

class Enviroment : public CoreGameObject
{
    std::vector<Chunk*> loadedChunks;
    QPixmap textest;

public:
    Enviroment();
    ~Enviroment() override;

    void tick() override;
    void render(QPainter&) override;
};