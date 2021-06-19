#pragma once
#include <iostream>
#include <vector>
#include <string>
#include <QPixmap>


class Spritesheet
{
    QPixmap fullSheet;
    int xlen, ylen;

public:
    std::vector<QPixmap> frames;
    Spritesheet(std::string, int, int, int);
    ~Spritesheet();

    int frameCount();
    int width();
    int height();
};