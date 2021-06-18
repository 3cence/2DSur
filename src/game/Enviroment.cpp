#include "game/Enviroment.h"
#include <iostream>

Enviroment::Enviroment()
    : CoreGameObject()
{
    textest.load("/home/ecence/Documents/Programming/C++/2DSur/assets/idontknowhowtoorganisethissoitsalongnamesoidonotusethisdirectoryinthecode/Ground Tiles.png");
}

Enviroment::~Enviroment()
{

}

void Enviroment::tick()
{

}

void Enviroment::render(QPainter &pnt)
{
    pnt.drawPixmap(QRect(0, 0, 128 * 2.5, 256 * 2.5), textest);
    pnt.drawPixmap(QRect(128 * 2.5, 0, 128 * 2.5, 256 * 2.5), textest);
    std::cout << "jhfgaljhdfgljhgfjhl" << std::endl;
}