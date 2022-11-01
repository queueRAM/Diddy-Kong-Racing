#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "extract.h"

class ExtractCompressed : Extract {
public:
    ExtractCompressed(std::string key, std::vector<uint8_t> data, std::string outFilepath);
    ~ExtractCompressed();
};
