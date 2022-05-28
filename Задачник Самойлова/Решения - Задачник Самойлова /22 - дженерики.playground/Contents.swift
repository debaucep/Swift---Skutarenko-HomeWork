import UIKit
//1) Создать 5 функций, каждая - с входящими параметрами универсальных типов. Преобразовать их параметры в Int, Double, Float, String, Character. Параметры внутри тела функции добавить параметры в массив и отсортировать. Вывести результаты в консоль.
func addAndPrint<T>(param: T, param2: T, param3: T){
    let array = [param, param2, param3]
    for oneElement in array{
        print(oneElement)
    }
}
addAndPrint(param: "Привет", param2: "ты", param3: "босс")
addAndPrint(param: 1, param2: 2, param3: 3)
addAndPrint(param: true, param2: false, param3: true)
//2) Создать класс, структуру, перечисление универсального типа — для тренировки.
//3) Создать протокол Стрелять. У него создать метод shoot.
protocol Shoot{
    func shoot()
}
//4) Создать класс Солдат. Ему задайте имя и звание. Подключите к классу протокол Стрелять. Класс должен быть с универсальным шаблоном. Вызовите у него метод протокола. Метод должен называть имя, звание.
enum Rank{
    case soldier, sailor, sergeant, pettyOfficer, corporal
}
class Soldier: Shoot{
    var name = ""
    var rank = Rank.soldier
    var tour = 0{
        willSet{
            newValue > 10 ? print("А вот и дембель, \(name)!") :  print("\(name), иди, чисти картошку!")
        }
    }
    func shoot() {
        print("Имя: \(name), ранг: \(rank.self)")
    }
}
//5) Сделайте расширение класса Солдат. Добавьте свойство срок службы и наблюдайте за ним. Если срок службы больше 10 — прилетает сообщение «А вот и дембель!»,а если меньше — пусть чистит картошку.
//6) Создайте несколько солдат с разным сроком службы. Добавьте их в массив. Отсортируйте и солдата с самым большим сроком удалите из массива.
let soldier1 = Soldier()
let soldier2 = Soldier()
let soldier3 = Soldier()
(soldier1.name, soldier1.rank, soldier1.tour) = ("Вася", .soldier, 12)
(soldier2.name, soldier2.rank, soldier2.tour) = ("Громызяка", .sailor, 3)
(soldier3.name, soldier3.rank, soldier3.tour) = ("Дух", .pettyOfficer, 4)
soldier1.shoot()
soldier2.shoot()
soldier3.shoot()
var allSoldiers = [soldier1, soldier2, soldier3]
allSoldiers.sort{ $0.tour < $1.tour }
allSoldiers.removeLast()
allSoldiers
