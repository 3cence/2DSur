#pragma once
#include <iostream>
#include <vector>
#include <string>
#include <QPixmap>


class Spritesheet
{
    int xlen, ylen;

public:
    QPixmap fullSheet;
    std::vector<QPixmap> frames;
    Spritesheet(std::string, int, int, int);
    ~Spritesheet();

    int frameCount();
    int width();
    int height();
};