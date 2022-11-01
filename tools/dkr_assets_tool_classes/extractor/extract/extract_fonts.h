#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "extract.h"

#include "../../libs/json.hpp"

class ExtractFonts : Extract {
public:
    ExtractFonts(std::string key, std::vector<uint8_t> data, std::string outFilepath, std::string folder, json::JSON &configJSON);
    ~ExtractFonts();
};
