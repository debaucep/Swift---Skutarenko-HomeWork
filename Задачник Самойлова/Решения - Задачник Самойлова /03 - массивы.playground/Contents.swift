import UIKit
import Foundation
//1) Создайте массив учеников из 12 мальчиков
var students = ["Иван", "Пётр", "Антон", "Владимир", "Сергей", "Кирилл", "Артур", "Александр", "Алексей", "Николай", "Роман", "Анатолий", ]
//2) Добавьте 7 девочек: с помощью append и по определённому индексу: см. insert. Выведите результат в консоль.
students.append("Анастасия")
students.append("Мария")
students.append("Забава")
students.append("Злата")
students.insert("Татьяна", at: 0)
students.insert("Зинаида", at: 1)
students.insert("Елизавета", at: 4)
print(students)
//3) Удалите 7 учеников так, чтобы получилось 5 мальчиков и 5 девочек. См. Удаление по диапазону. Выведите результат в консоль.
students.removeFirst(4)
students.removeSubrange(1...5)
//4) Создайте массив оценок от 0 до 5 и второй — от 6 до 10. Объедените два массива в один.
var grade1 = Array(0...5)
let grade2 = Array(6...10)
grade1 += grade2
//5) Присвойте каждому ученику оценку. Так, чтобы в консоли получилось примерно: «Вася — 5 баллов.Неплохо.».
students.count
grade1.count

for index in 0..<students.count{
    let randNumber = Int.random(in: 1...10)
    print("\(students[index]) - \(grade1[randNumber]) - неплохо.")
}
//6) Создайте массив из чисел. Числа - это купюры в долларах. Посчитать количество денег и вывести в консоль.
let wallet = [2, 5, 10, 20, 50, 100, 500, 200, 1000, 2000, 5000]
let summ = wallet.reduce(0, +)
print(summ)
//ПРОДВИНУТЫЙ УРОВЕНЬ.
//1) Создайте 10 строк с названиями стран. Создайте массив.
//Проверьте строки: если в строке более 5 символов — добавить её в массив. Но если строка содержит букву А - заменить эту букву на другую и добавить изменённую строку в массив.
let country1 = "Россия"
let country2 = "Япония"
let country3 = "Китай"
let country4 = "Сербия"
let country5 = "Индия"
let country6 = "США"
let country7 = "Франция"
let country8 = "Норвегия"
let country9 = "Швеция"
let country10 = "Беларусь"
let countries = [country1, country2, country3, country4, country5, country6, country7, country8, country9, country10]
var countriesArray = [String]()
for oneCountry in countries{
    if oneCountry.count > 5{
        if oneCountry.lowercased().contains("а"){
            let changeCountryName = oneCountry.lowercased().replacingOccurrences(of: "а", with: "щ")
            countriesArray.append(changeCountryName.capitalized)
        }
    }
}
countriesArray
//2) Создайте массив из 20-30 значений любого типа. Сделайте линейную сортировку (linear sort).
var intArray = [Int]()
func createArray(repeating: Int){
    intArray = []
    for _ in 1...repeating{
        intArray.append(Int.random(in: 0...1000))
    }
}
createArray(repeating: 25)
intArray

//3) Сделайте сортировку пузырьком (bubble sort).
for i in 0..<intArray.count {
    for j in 0..<intArray.count - i - 1 {
        if intArray[j] > intArray[j + 1] {
            intArray.swapAt(j + 1, j)
        }
    }
}
intArray
//4) Сделайте быструю сортировку (quick sort).
createArray(repeating: 25)
intArray
intArray.sort(by: <)
//5) Сделайте bubble sort немного быстрее — создайте алгоритм «шейкерной» сортировки, или коктейльный алгоритм.
//6) Отсортируйте массив по алгоритму четно-нечетной сортировки.
createArray(repeating: 25)
intArray

var even = [Int]()
var odd = [Int]()
for i in 0..<intArray.count {
    if intArray[i].isMultiple(of: 2){
        even.append(intArray[i])
    } else{
        odd.append(intArray[i])
    }
}
intArray = even + odd
