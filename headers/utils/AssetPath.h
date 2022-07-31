#pragma once
#include <string>

std::string assetPath(std::string path)
{   
    //This is for debugging
    std::string prefix = "/home/ecence/Documents/C++/2DSur/assets/";
    std::string completePath = prefix.append(path.c_str());
    //This is for bundled executable
    // std::string prefix = "dont really know yet";
    return completePath;
}