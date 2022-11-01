#pragma once

#include <string>

#include "config.h"

class Extractor {
public:
    Extractor(std::string version, std::string configsDirectory, std::string baseromsDirectory, std::string outDirectory);
    ~Extractor();
private:
    std::vector<ExtractConfig> configs;
};
