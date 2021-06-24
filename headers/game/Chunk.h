#pragma once

class Chunk
{
public:
    int x, y;
    int texmap[8][8];

    Chunk(int, int);
};