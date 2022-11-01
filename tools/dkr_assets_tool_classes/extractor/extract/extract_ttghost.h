#pragma once

#include <cstdint>
#include <string>
#include <vector>

#include "extract.h"

#include "../../libs/json.hpp"

class ExtractTTGhost : Extract {
public:
    ExtractTTGhost(std::string key, std::vector<uint8_t> data, std::string outFilepath, json::JSON &configJSON);
    ~ExtractTTGhost();
};
