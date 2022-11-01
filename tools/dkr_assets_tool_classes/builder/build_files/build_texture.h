#pragma once

#include <cstdint>
#include <string>
#include <vector>

class BuildTexture {
public:
    BuildTexture(std::string srcPath, std::string dstPath);
    ~BuildTexture();
private:
    void write_texture_data(std::vector<uint8_t> &out, int outOffset, std::vector<uint8_t> &rgbaData, 
        int width, int height, int format, bool interlace, bool flipTexture);
};
