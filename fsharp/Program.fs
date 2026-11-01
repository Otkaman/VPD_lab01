open System

Console.OutputEncoding <- Text.Encoding.UTF8

let studentNameRu = "Уцын Артём"
let studentNameEn = "Utsyn Artiom"
let studentNumber = 21
let groupName = "М3О-110БВк-26"
let languageName = "F#"

let studentId = sprintf "%s/%02d" groupName studentNumber
let controlValue = 304 * studentNumber

printfn "Hello to 304 from %s, number %d, group %s!" studentNameEn studentNumber groupName
printfn "Привет, 304! Это %s, номер %d, группа %s!" studentNameRu studentNumber groupName
printfn "Student ID: %s | Language: %s | Control: %d" studentId languageName controlValue

// Конвейер |>: имя -> слова -> длины слов -> сумма
let words = studentNameEn.Split(' ', StringSplitOptions.RemoveEmptyEntries)
let totalLetters = words |> Array.map String.length |> Array.sum
printfn "Words: %d, total letters: %d" words.Length totalLetters
