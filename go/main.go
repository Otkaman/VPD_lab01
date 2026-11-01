package main

import "fmt"

func main() {
	studentNameRu := "Уцын Артём"
	studentNameEn := "Utsyn Artiom"
	studentNumber := 21
	groupName := "М3О-110БВк-26"
	languageName := "Go"

	studentID := fmt.Sprintf("%s/%02d", groupName, studentNumber)
	controlValue := 304 * studentNumber

	fmt.Printf("Hello to 304 from %s, number %d, group %s!\n", studentNameEn, studentNumber, groupName)
	fmt.Printf("Привет, 304! Это %s, номер %d, группа %s!\n", studentNameRu, studentNumber, groupName)
	fmt.Printf("Student ID: %s | Language: %s | Control: %d\n", studentID, languageName, controlValue)
}
