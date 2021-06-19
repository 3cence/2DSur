#pragma once

class Chunk
{
public:
    int x, y;
    int texmap[4][4];

    Chunk(int, int);
};