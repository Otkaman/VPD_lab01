#include <iostream>
#include <iomanip>
#include <string>
#ifdef _WIN32
#include <windows.h>
#endif

int main() {
#ifdef _WIN32
    SetConsoleCP(CP_UTF8);
    SetConsoleOutputCP(CP_UTF8);
#endif
    const std::string student_name_ru = "Уцын Артём";
    const std::string student_name_en = "Utsyn Artiom";
    const int student_number = 21;
    const std::string group_name = "М3О-110БВк-26";
    const std::string language_name = "C++";

    const int control_value = 304 * student_number;

    std::cout << "Hello to 304 from " << student_name_en << ", number " << student_number
              << ", group " << group_name << "!\n";
    std::cout << "Привет, 304! Это " << student_name_ru << ", номер " << student_number
              << ", группа " << group_name << "!\n";
    std::cout << "Student ID: " << group_name << "/" << std::setw(2) << std::setfill('0')
              << student_number << std::setfill(' ') << " | Language: " << language_name
              << " | Control: " << control_value << "\n";
    return 0;
}
