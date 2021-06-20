#include "game/Enviroment.h"
#include "utils/AssetPath.h"
#include <iostream>

Enviroment::Enviroment()
    : CoreGameObject()
{
    earthTextures = new Spritesheet(assetPath("world/groundTiles.png"), 2, 4, 8);
    loadedChunks.push_back(new Chunk(0, 0));
    loadedChunks.push_back(new Chunk(0, 0));
}

Enviroment::~Enviroment()
{

}

void Enviroment::tick()
{
    std::vector<QPoint> activeChunkCoords;

    for (int xi = -1; xi <= 1; xi++)
    {
        for (int yi = -1; yi <= 1; yi++)
        {
            activeChunkCoords.push_back(QPoint(tmpPlayerChunk[0] + xi, tmpPlayerChunk[1] + yi));
        }
    }

    for (int i = 0; i < activeChunkCoords.size(); i++)
    {
        std::cout << activeChunkCoords[i].x() << " " << activeChunkCoords[i].y() << std::endl;
    }
}

void Enviroment::render(QPainter &pnt)
{
    int width = earthTextures->width() * 2.5;
    int height = earthTextures->height() * 2.5;
    for (int yi = 0; yi < 4; yi++)
    {
        for (int xi = 0; xi < 4; xi++)
        {
            pnt.drawPixmap(QRect(width * xi, height * yi, width, height),
                                    earthTextures->frames[loadedChunks[0]->texmap[xi][yi]]);
        }
    }
}