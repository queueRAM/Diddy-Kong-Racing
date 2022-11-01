#pragma once

#include <cstdint>
#include <string>
#include <unordered_map>
#include <vector>

#include "extract.h"

#include "../../libs/json.hpp"

class ExtractTextures : Extract {
public:
    ExtractTextures(std::string key, std::vector<uint8_t> data, std::string outFilepath,
        std::unordered_map<std::string, std::string> *tags);
    ~ExtractTextures();
private:
    void write_images(std::string outImagePath, std::vector<uint8_t> &data, json::JSON &out);
};
