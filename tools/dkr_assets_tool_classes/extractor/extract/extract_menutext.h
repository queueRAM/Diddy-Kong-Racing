#pragma once

#include <cstdint>
#include <string>
#include <unordered_map>
#include <vector>

#include "extract.h"

class ExtractMenuText : Extract {
public:
    ExtractMenuText(std::string key, std::vector<uint8_t> data, std::string outFilepath, 
  std::unordered_map<std::string, std::string> *tags);
    ~ExtractMenuText();
};
