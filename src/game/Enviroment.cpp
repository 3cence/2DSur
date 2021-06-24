#include "game/Enviroment.h"
#include "utils/AssetPath.h"
#include <iostream>
#include <string>

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
}

void Enviroment::render(QPainter &pnt)
{
    double sizeMultiplier = 1.5;
    int tileWH[2] = {8, 8};
    int width = earthTextures->width() * sizeMultiplier;
    int height = earthTextures->height() * sizeMultiplier;
    for (int chnk = 0; chnk < activeChunks.size(); chnk++)
    {
        int chunkPosX = (chnk % 3) * width * tileWH[0];
        int chunkPosY = (chnk / 3) * height * tileWH[1];
        for (int yi = 0; yi < tileWH[1]; yi++)
        {
            for (int xi = 0; xi < tileWH[0]; xi++)
            {
                QRect squareToPut((width * xi) + chunkPosX - 40, (height * yi) + chunkPosY, width, height);
                QString chnkInfo = QString("[") + QString(std::to_string(activeChunks[chnk]->x).c_str()) + QString(", ") + QString(std::to_string(activeChunks[chnk]->y).c_str()) + QString("]");
                pnt.drawPixmap(squareToPut, earthTextures->frames[activeChunks[chnk]->texmap[xi][yi]]);
                pnt.setPen(Qt::blue);
                pnt.setBrush(Qt::NoBrush);
                pnt.drawRect(squareToPut);
                pnt.drawText(QPoint(squareToPut.x() + 10, squareToPut.y() + 15), chnkInfo);
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
