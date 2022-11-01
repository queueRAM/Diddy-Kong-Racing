#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "extract.h"

class ExtractLevelHeader : Extract {
public:
    ExtractLevelHeader(std::string key, std::vector<uint8_t> data, std::string outFilepath);
    ~ExtractLevelHeader();
};
