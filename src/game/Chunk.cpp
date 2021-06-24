#include "game/Chunk.h"
#include <iostream>
#include <random>

Chunk::Chunk(int x, int y)
{
    this->x = x;
    this->y = y;
    
    for (int xi = 0; xi < 8; xi++)
    {
        for (int yi = 0; yi < 8; yi++)
        {
            int roll = rand() % 10;
            if (roll == 0 || roll == 1)
                texmap[xi][yi] = (rand() % 7) + 1;
            else
                texmap[xi][yi] = 0;
        }
    }
    // for (int xi = 0; xi < 8; xi++)
    // {
    //     for (int yi = 0; yi < 8; yi++)
    //     {
    //         std::cout << texmap[xi][yi] << " ";
    //     }
    //     std::cout << std::endl;
    // }
}