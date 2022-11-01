#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "extract.h"

class ExtractBinary : Extract {
public:
    ExtractBinary(std::string key, std::vector<uint8_t> data, std::string outFilepath);
    ~ExtractBinary();
};
