#pragma once

#include <cstdint>
#include <string>
#include <vector>

class BuildGameText {
public:
    BuildGameText(std::string srcPath, std::string dstPath);
    ~BuildGameText();
private:
    /*
    void build_dialog(std::vector<uint8_t> &out, std::string &srcPath);
    */
    void build_textbox(std::vector<uint8_t> &out, std::string &srcPath);
};
