#pragma once

#include <cstdint>
#include <string>
#include <unordered_map>
#include <vector>

#include "extract.h"

#include "../../libs/json.hpp"

class ExtractGameText : Extract {
public:
    ExtractGameText(std::string key, std::vector<uint8_t> data, std::string outFilepath, 
  std::unordered_map<std::string, std::string> *tags);
    ~ExtractGameText();
private:
    void extract_dialog(json::JSON &out, std::vector<uint8_t> &data);
    void extract_textbox(json::JSON &out, std::vector<uint8_t> &data);
};
