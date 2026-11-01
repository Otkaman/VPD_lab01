#include <stdio.h>
#ifdef _WIN32
#include <windows.h>
#endif

int main(void) {
#ifdef _WIN32
    SetConsoleCP(CP_UTF8);
    SetConsoleOutputCP(CP_UTF8);
#endif
    const char *student_name_ru = "Уцын Артём";
    const char *student_name_en = "Utsyn Artiom";
    int student_number = 21;
    const char *group_name = "М3О-110БВк-26";
    const char *language_name = "C";

    int control_value = 304 * student_number;

    printf("Hello to 304 from %s, number %d, group %s!\n", student_name_en, student_number, group_name);
    printf("Привет, 304! Это %s, номер %d, группа %s!\n", student_name_ru, student_number, group_name);
    printf("Student ID: %s/%02d | Language: %s | Control: %d\n", group_name, student_number, language_name, control_value);
    return 0;
}
