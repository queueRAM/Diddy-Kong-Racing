#include <sstream>
#include <string>
#include <vector>

#include "../common/util.h"
#include "../common/util/fileHelper.h"
#include "../common/util/jsonHelper.h"

#include "asset_enums_header.h"

#define INDENT "    "
#define FILENAME "asset_enums.h"
#define HEADER_GUARD "_ASSET_ENUMS_H"

#define ASSETS_START_LABEL "ASSETS_START"
#define ASSETS_END_LABEL   "ASSETS_END"

AssetEnumsHeader::AssetEnumsHeader(std::string dstFolder) {
    std::stringstream out;
    write_comment(out, "This file is automatically generated. Any changes you make to this file will get overwritten.");
    out << std::endl;
    out << "#ifndef " << HEADER_GUARD << std::endl;
    out << "#define " << HEADER_GUARD << std::endl;
    out << std::endl;
    write_header_comment(out, "Asset Sections");
    std::vector<std::string> assetsOrder = get_assets_order();
    write_order_section(out, "ASSET_SECTIONS", assetsOrder);
    for(std::string &sectionName : assetsOrder) {
        if(section_has_key(sectionName, "files")) {
            write_header_comment(out, sectionName);
            std::vector<std::string> sectionOrder = get_section_order(sectionName);
            write_order_section(out, sectionName, sectionOrder);
        }
        std::string sectionType = get_string_from_section(sectionName, "type");
        if(sectionType == "MenuText") {
            std::vector<std::string> menuTextBuildIds = get_array_from_section(sectionName, "menu-text-build-ids");
            write_order_section(out, sectionName + "_IDS", menuTextBuildIds);
        } else if (sectionType == "Fonts") {
            std::vector<std::string> fonts = get_array_from_section(sectionName, "fonts-order");
            write_header_comment(out, sectionName);
            write_order_section(out, sectionName, fonts);
        }
    }
    out << "#endif " << std::endl;
    write_text_file(out.str(), dstFolder + "/" + FILENAME);
}

AssetEnumsHeader::~AssetEnumsHeader() {
    
}

void AssetEnumsHeader::write_comment(std::stringstream &out, std::string text) {
    out << "// " << text << std::endl;
}

void AssetEnumsHeader::write_header_comment(std::stringstream &out, std::string text) {
    out << "/********** " << text << " **********/" << std::endl << std::endl;
}

void AssetEnumsHeader::write_order_section(std::stringstream &out, std::string name, std::vector<std::string> &order) {
    out << "typedef enum {" << std::endl;
    int numberOfEntries = order.size();
    for(int i = 0; i < numberOfEntries; i++) {
        std::string enumEntryName = order[i];
        
        if(enumEntryName.length() == 0) {
            enumEntryName = name + "_NULL_" + std::to_string(i);
        }
        
        out << INDENT << enumEntryName;
        if(i < numberOfEntries - 1) {
            out << ",";
        }
        out << std::endl;
    }
    out << "} " << upper_snake_case_to_pascal_case(name) << "Enum;" << std::endl << std::endl;
}






