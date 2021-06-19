#include "utils/Spritesheet.h"
#include <iostream>
#include <vector>
#include <string>
#include <QPixmap>

Spritesheet::Spritesheet(std::string path, int collumns, int rows, int frameCount)
{
    fullSheet.load(path.c_str());
    xlen = fullSheet.width() / collumns;
    ylen = fullSheet.height() / rows;

    for (int y = 0; y < rows; y++)
    {
        for (int x = 0; x < collumns; x++)
        {
            frames.push_back(fullSheet.copy(xlen * x, ylen * y, xlen, ylen));
        }
    }
}

int Spritesheet::frameCount()
{
    return frames.size();
}

int Spritesheet::width()
{
    return xlen;
}

int Spritesheet::height()
{
    return ylen;
}

Spritesheet::~Spritesheet()
{

}