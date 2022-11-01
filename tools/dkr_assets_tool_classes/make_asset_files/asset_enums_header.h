#pragma once

#include <sstream>
#include <string>
#include <vector>

class AssetEnumsHeader {
public:
    AssetEnumsHeader(std::string dstPath);
    ~AssetEnumsHeader();
private:
    void write_comment(std::stringstream &out, std::string text);
    void write_header_comment(std::stringstream &out, std::string text);
    void write_order_section(std::stringstream &out, std::string name, std::vector<std::string> &order);
};
