import UIKit
//1) Создать 3 функции:
// первая функция принимает массив Int и сортирует его по порядку (возрастание). После
//этого распечатывает результат в консоль;
func intSorted(whatToSort:  [Int]){
    print(whatToSort.sorted(by: <))
}
let intArray = [13, 10, 8, 65, 42, 33]
intSorted(whatToSort: intArray)
// вторая функция принимает массив String, меняет 1, 2 и 3 элементы и сортирует по
//алфавиту. После этого распечатывает результат в консоль;
func changeAndPrint(what toPrint: inout [String]){
    if toPrint.count >= 3{
        toPrint[0] = toPrint[0].uppercased()
        toPrint[1] = "null"
        toPrint[2] = "changed"
    }
    toPrint.sort(by: <)
    print(toPrint)
}
var stringArray = ["I", "just", "a litle", "girl"]
changeAndPrint(what: &stringArray)
// третья функция принимает 2 массива String и складывает их. После этого
//распечатывает результат в консоль.
func addition (_ firstArray: [String], and secondArray: [String]){
    let summString = firstArray + secondArray
    print(summString)
}
let anotherArray = ["I", "want", "to", "blow", "dicks"]
addition(stringArray, and: anotherArray)

//2) Создать журнал для учителя, который будет принимать имя студента, профессию и оценку и записывает это все в массив. И внесите 10 студентов туда и распечатаете через цикл for.
var studentsJournal = [(name: String, profession: String, mark: Int)]()
func addStudent(name: String, profession: String, mark: Int){
    studentsJournal.append((name, profession, mark))
}
addStudent(name: "Владимир", profession: "программирование", mark: 5)
addStudent(name: "Сергей", profession: "архитектор ", mark: 5)
addStudent(name: "Мария", profession: "культурология", mark: 5)
addStudent(name: "Злата", profession: "отсутствует", mark: 3)
addStudent(name: "Юки", profession: "минетчица", mark: 5)
addStudent(name: "Анастасия", profession: "репетиторство", mark: 5)
addStudent(name: "Татьяна", profession: "образование", mark: 5)
addStudent(name: "Зинаида", profession: "буккакелогия", mark: 5)
addStudent(name: "Забава", profession: "программирование", mark: 5)
addStudent(name: "Елизавета", profession: "приборостроение", mark: 4)
for oneStudent in studentsJournal{
    print("Имя студента - \(oneStudent.name), деятельность - \(oneStudent.profession), оценка за труды: \(oneStudent.mark)")
}
//3) Создать функцию которая принимает имя и фамилию, потом положить это в массив и вывести результат в консоль.
var namesAndSurnames = [(name: String, surname: String)]()
func addNameAndSurname(_ name: String, _ surname: String){
    namesAndSurnames.append((name, surname))
}
addNameAndSurname("Владимир", "Осипов")
addNameAndSurname("Мария", "Осипова")
for oneMan in namesAndSurnames{
    print("Имя: \(oneMan.name), фамилия: \(oneMan.surname)")
}
//4) Создайте функцию которая принимает параметры и вычисляет площадь круга.
func findSquare(radius: Double) -> Int{
    Int(Double.pi * pow(radius, 2))
}
findSquare(radius: 12)
findSquare(radius: 3)
//5) Создайте Dictionary с именем ученики , где ключ name и score, а значение (1 тюпл из 5 имен) и (второй тюпл из 5 оценок).И распечатайте только имена по ключу.
let studentDict = ["name": ("Владимир", "Забава", "Злата", "Артур", "Мария"),
                   "score": ("5", "4", "3", "2", "1")]
print(studentDict["name"]!)
//ПРОДВИНУТЫЙ УРОВЕНЬ.
//1) Функция принимает 3 массива String. Задача: сложить их вместе, преобразовать в тип Int и посчитать сумму. Распечатать результат в консоль.
func findOptionalSumm(add firstArray: [String], second: [String], and third: [String]){
    let summArray = firstArray + second + third
    var summ = 0
    for oneNumber in summArray{
        if let i = Int(oneNumber){
            summ += i
        }
    }
    print("Сумма чисел = \(summ)")
}
let arrayWithNumbers = ["10", "15", "20"]
let anotherArrayWithNumbers = ["1", "3", "5"]
findOptionalSumm(add: stringArray, second: arrayWithNumbers, and: anotherArrayWithNumbers)
//2) Создайте функцию, которая принимает строку-рассказ без пробелов и знаков препинаний, всё с маленькой буквы и на латинице.
func changeText (someString: String) -> String{
    return someString
}
//3) Напишите код, который добавляет знаки препинания в строку-рассказ, переносит каждое новое предложение на новую строку.Добавьте заглавные буквы.
changeText(someString: "helloiamaprogrammernowitrytochangethisfuckingtext")


