#!/usr/bin/env bash
student_name_ru="Уцын Артём"
student_name_en="Utsyn Artiom"
student_number=21
group_name="М3О-110БВк-26"
language_name="Bash"

printf -v student_id '%s/%02d' "$group_name" "$((10#$student_number))"
control_value=$((304 * 10#$student_number))

echo "Hello to 304 from $student_name_en, number $student_number, group $group_name!"
echo "Привет, 304! Это $student_name_ru, номер $student_number, группа $group_name!"
echo "Student ID: $student_id | Language: $language_name | Control: $control_value"

# настоящий pipe + command substitution
words=$(echo "$student_name_en" | wc -w)
chars=$(printf '%s' "$student_name_en" | wc -m)
echo "student_name_en: words=$words, chars=$chars"
