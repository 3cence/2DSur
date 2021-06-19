#pragma once
#include <string>

std::string assetPath(std::string path)
{   
    //This is for debugging
    std::string prefix = "/home/ecence/Documents/Programming/C++/2DSur/assets/";
    //This is for bundled executable
    // std::string prefix = "dont really know yet";
    return prefix.append(path.c_str());
}