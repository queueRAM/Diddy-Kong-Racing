#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "extract.h"

class ExtractLevelName : Extract {
public:
    ExtractLevelName(std::string key, std::vector<uint8_t> data, std::string outFilepath);
    ~ExtractLevelName();
};
