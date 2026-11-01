interface Student {
  studentNameRu: string;
  studentNameEn: string;
  studentNumber: number;
  groupName: string;
  languageName: string;
}

const student: Student = {
  studentNameRu: "Уцын Артём",
  studentNameEn: "Utsyn Artiom",
  studentNumber: 21,
  groupName: "М3О-110БВк-26",
  languageName: "TypeScript",
};

const studentId: string = `${student.groupName}/${String(student.studentNumber).padStart(2, "0")}`;
const controlValue: number = 304 * student.studentNumber;

console.log(`Hello to 304 from ${student.studentNameEn}, number ${student.studentNumber}, group ${student.groupName}!`);
console.log(`Привет, 304! Это ${student.studentNameRu}, номер ${student.studentNumber}, группа ${student.groupName}!`);
console.log(`Student ID: ${studentId} | Language: ${student.languageName} | Control: ${controlValue}`);
export{};