#include "game/Enviroment.h"
#include "utils/AssetPath.h"
#include <iostream>

Enviroment::Enviroment()
    : CoreGameObject()
{
    earthTextures = new Spritesheet(assetPath("world/groundTiles.png"), 2, 4, 8);
    loadedChunks.push_back(new Chunk(0, 0));
    loadedChunks.push_back(new Chunk(0, 1));
}

Enviroment::~Enviroment()
{

}

void Enviroment::tick()
{
    std::vector<QPoint> activeChunkCoords;
    activeChunks.clear();

    for (int yi = 1; yi >= -1; yi--)
    {
        for (int xi = -1; xi <= 1; xi++)
        {
            activeChunkCoords.push_back(QPoint(tmpPlayerChunk[0] + xi, tmpPlayerChunk[1] + yi));
        }
    }

    for (int i = 0; i < activeChunkCoords.size(); i++)
    {
        Chunk* inQue = getLoadedChunk(activeChunkCoords[i].x(), activeChunkCoords[i].y());
        if (inQue == nullptr)
        {
            loadedChunks.push_back(new Chunk(activeChunkCoords[i].x(), activeChunkCoords[i].y()));
            inQue = getLoadedChunk(activeChunkCoords[i].x(), activeChunkCoords[i].y());
        }
        if (inQue != nullptr)
        {
            activeChunks.push_back(inQue);
        }
        else
        {
            throw "Missing Chunk";
        }
    }

    std::cout << activeChunks.size() << std::endl;
}

void Enviroment::render(QPainter &pnt)
{
    double sizeMultiplier = .90;
    int width = earthTextures->width() * sizeMultiplier;
    int height = earthTextures->height() * sizeMultiplier;
    for (int chnk = 0; chnk < activeChunks.size(); chnk++)
    {
        int chunkPosX = (chnk % 3) * sizeMultiplier * earthTextures->width() * 3;
        int chunkPosY = (chnk / 3) * sizeMultiplier * earthTextures->height() * 3;
        for (int yi = 0; yi < 4; yi++)
        {
            for (int xi = 0; xi < 4; xi++)
            {
                QRect squareToPut((width * xi) + chunkPosX + 100, (height * yi) + chunkPosY + 100, width, height);
                pnt.drawPixmap(squareToPut, earthTextures->frames[activeChunks[chnk]->texmap[xi][yi]]);
                pnt.setPen(Qt::blue);
                pnt.setBrush(Qt::NoBrush);
                pnt.drawRect(squareToPut);
            }
        }
    }
}

Chunk* Enviroment::getLoadedChunk(int x, int y)
{
    for (int i = 0; i < loadedChunks.size(); i++)
    {
        if (loadedChunks[i]->x == x || loadedChunks[0]->y == y)
        {
            return loadedChunks[i];
        }
    }
    return nullptr;
}
