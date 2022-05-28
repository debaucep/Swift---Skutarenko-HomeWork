import UIKit
//1) Написать, как понимаете замыкания: что это, для чего нужны?
//2) Написать 10 своих замыканий на примере сортировок массивов.
//3) Написать функцию, которая принимает массив, проверяет — пустой или нет. И если пустой — нужно записать туда значения.
var emptyArray = [Int]()
func returnArray (array: inout [Int], closure: ([Int]) -> [Int]){
    if array.isEmpty{
        array = closure(array)
    }
    for oneNumber in array{
        print(oneNumber)
    }
}
returnArray(array: &emptyArray, closure: { _ in [3, 5, 7] })
emptyArray

//4) Написать функцию - сайт который требует имя, фамилию, ник, емейл, пароль. Всё вывести в консоль.
func webPage(name: String, surname: String, nick: String, email: String, password: String){
    print("Имя: \(name), фамилия: \(surname), ник: \(nick), email: \(email), пароль: \(password)")
}
webPage(name: "Владимир", surname: "Осипов", nick: "Machpan", email: "machetik@gmail.com", password: "Machete1.")
//5) Написать функции которые принимают в качестве аргументов массивы и словари и проверяют: пустые или нет. Если пустые — добавляют туда значения и выводят в консоль.
//ПРОДВИНУТЫЙ УРОВЕНЬ.

//1) Создайте функцию, которая принимает массив Double. Напишите алгоритм, который находит в массиве минимальное значение. Распечатайте результат в консоль.
let doubleArr = [1.25, 7.3, 9.8, 0.12, 3.13]
func findMinOrMax(in array: [Double], whatToFind: String){
    if whatToFind == "min"{
    let sorted = array.sorted(by: <)
    let min = sorted[0]
    print("Минимальное значение в массиве - \(min)")
    } else if whatToFind == "max"{
        let sorted = array.sorted(by: >)
        let max = sorted[0]
        print("Максимальное значение в массиве - \(max)")
    }
}
findMinOrMax(in: doubleArr, whatToFind: "min")
findMinOrMax(in: doubleArr, whatToFind: "max")
//2) Теперь в этом же массиве найдите максимальное значение. Распечатайте результат в консоль.

//3) Создайте функцию, которая принимает массив букв (Characters). Отсортируйте массив так, чтобы гласные оказались в левой части, а согласные — в правой. Разделите массив на гласные и согласные (2 отдельных массива). Отсортируйте каждый по алфавиту. Распечатайте результат в консоль.
//4) Сложите получившиеся массивы в 1. Распечатайте результат в консоль.
var charactArr: [Character] = ["a", "t", "u", "o", "p", "e", "m"]
func operations (charArr: inout [Character]){
    func priority(str: Character) -> Int{
        switch str.lowercased(){
        case "e", "y", "u", "i", "o", "a": return 0
        case "b"..."z": return 1
        default: return 2
        }
    }
    charArr.sort{
        switch (priority(str: $0), priority(str: $1)) {
        case let (a, b) where a < b: return true
        case let (a, b) where a > b: return false
        default: return $0.lowercased() <= $1.lowercased()
        }
    }
    print(charArr)
    var vowels = [Character]()
    var consonants = [Character]()
    for oneWord in charArr{
        if priority(str: oneWord) == 0{
            vowels.append(oneWord)
        } else{
            consonants.append(oneWord)
        }
    }
    vowels.shuffle()
    consonants.shuffle()
    vowels.sort(by: <)
    consonants.sort(by: <)
    print(vowels)
    print(consonants)
    charArr = vowels + consonants
    print(charArr)
}
operations(charArr: &charactArr)
