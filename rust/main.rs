fn main() {
    let student_name_ru = "Уцын Артём";
    let student_name_en = "Utsyn Artiom";
    let student_number: u32 = 21;
    let group_name = "М3О-110БВк-26";
    let language_name = "Rust";

    let student_id = format!("{}/{:02}", group_name, student_number);
    let control_value = 304 * student_number;

    println!("Hello to 304 from {}, number {}, group {}!", student_name_en, student_number, group_name);
    println!("Привет, 304! Это {}, номер {}, группа {}!", student_name_ru, student_number, group_name);
    println!("Student ID: {} | Language: {} | Control: {}", student_id, language_name, control_value);
    println!("Formatted student_id: {}", student_id);
}
