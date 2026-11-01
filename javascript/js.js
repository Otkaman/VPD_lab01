const studentNameRu = "Уцын Артём";
const studentNameEn = "Utsyn Artiom";
const studentNumber = 21;
const groupName = "М3О-110БВк-26";
const languageName = "JavaScript";

const studentId = `${groupName}/${String(studentNumber).padStart(2, "0")}`;
const controlValue = 304 * studentNumber;

console.log(`Hello to 304 from ${studentNameEn}, number ${studentNumber}, group ${groupName}!`);
console.log(`Привет, 304! Это ${studentNameRu}, номер ${studentNumber}, группа ${groupName}!`);
console.log(`Student ID: ${studentId} | Language: ${languageName} | Control: ${controlValue}`);
console.log(`Length of student_name_en: ${studentNameEn.length}`);
