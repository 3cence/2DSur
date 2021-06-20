#pragma once
#include "game/CoreGameObject.h"
#include "game/Chunk.h"
#include "utils/Spritesheet.h"
#include <vector>
#include <QPainter>
#include <QPixmap>

class Enviroment : public CoreGameObject
{
    std::vector<Chunk*> loadedChunks;
    std::vector<Chunk*> activeChunks;

    int tmpPlayerChunk[2] = {12, 16};

    Spritesheet *earthTextures;

public:
    Enviroment();
    ~Enviroment() override;

    void tick() override;
    void render(QPainter&) override;
};