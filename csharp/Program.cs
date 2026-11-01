Console.OutputEncoding = System.Text.Encoding.UTF8;

var student = new Student(
    StudentNameRu: "Уцын Артём",
    StudentNameEn: "Utsyn Artiom",
    StudentNumber: 21,
    GroupName: "М3О-110БВк-26",
    LanguageName: "C#");

string studentId = $"{student.GroupName}/{student.StudentNumber:D2}";
int controlValue = 304 * student.StudentNumber;

Console.WriteLine($"Hello to 304 from {student.StudentNameEn}, number {student.StudentNumber}, group {student.GroupName}!");
Console.WriteLine($"Привет, 304! Это {student.StudentNameRu}, номер {student.StudentNumber}, группа {student.GroupName}!");
Console.WriteLine($"Student ID: {studentId} | Language: {student.LanguageName} | Control: {controlValue}");

record Student(string StudentNameRu, string StudentNameEn, int StudentNumber, string GroupName, string LanguageName);
