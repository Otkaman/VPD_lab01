public class Main {
    public static void main(String[] args) {
        String studentNameRu = "Уцын Артём";
        String studentNameEn = "Utsyn Artiom";
        int studentNumber = 21;
        String groupName = "М3О-110БВк-26";
        String languageName = "Java";

        int controlValue = 304 * studentNumber;

        System.out.printf("Hello to 304 from %s, number %d, group %s!%n", studentNameEn, studentNumber, groupName);
        System.out.printf("Привет, 304! Это %s, номер %d, группа %s!%n", studentNameRu, studentNumber, groupName);
        System.out.printf("Student ID: %s/%02d | Language: %s | Control: %d%n", groupName, studentNumber, languageName, controlValue);
    }
}
