#pragma once

#include <string>
#include <vector>

void generate_enums_cache(std::string enumsHeaderPath);

std::string get_enum_string_from_value(std::string enumName, int value);
int get_enum_value_from_string(std::string enumName, std::string value);
std::vector<std::string> get_enum_keys(std::string enumName);


