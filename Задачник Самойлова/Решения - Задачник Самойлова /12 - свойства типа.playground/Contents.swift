import UIKit
//1. Написать, что такое глобальные и локальные переменные (своими словами, как поняли) и что такое свойства типа (в чем отличие от свойств экземпляра?)
//2. Создать глобальный массив значений (тип на ваше усмотрение). Создать 2 класса:
// первый класс сортирует массив по индексам с первого до последнего;
// второй класс сортирует массив по индексам с последнего до первого.
//Вывести в консоль.
let intArray = [5, 8, 2, 3, 13, 65, 49, 26]
class MinMax{
    func sortArray(toSort: [Int]){
        print(toSort.sorted(by: <))
    }
}
class MaxMin{
    func sortArray(toSort: [Int]){
        print(toSort.sorted(by: >))
    }
}
let minToMax: () = MinMax().sortArray(toSort: intArray)
let maxToMin: () = MaxMin().sortArray(toSort: intArray)
//3. Создать свою компанию. В ней 2 класса-руководителя: генеральный директор и зам. по продажам.
//У генерального 4 свойства. Сделать их разными: свойства типа и свойства экземпляра.
//У зама по продажам (а он класс-наследник генерального) свойства наследуются + есть ещё 2 своих: количество продаж и марка машины, к примеру. Все значения свойств вывести в консоль.
//И третий класс — Бухгалтер. У него есть пустой метод, который принимает глобальный переменный массив Работа (тип Int) и плюсует все элементы, получая сумму всех значений в массиве.
//Сумму вывести в консоль.
let job = intArray
class Company{
    static var personal = 0
}
class GenDirector: Company{
    var name: String
    init(name: String) {
        Company.personal += 1
        self.name = name
    }
}
class SalesManager: GenDirector{
    var salesCount: Int
    var carBrand: String
    init(name: String, salesCount: Int, carBrand: String) {
        Company.personal += 1
        self.salesCount = salesCount
        self.carBrand = carBrand
        super.init(name: name)
    }
}
class Accountant: Company{
    func printJob(){
        let sum = job.reduce(0, +)
        print(sum)
    }

}
let company = Company()
let gendir = GenDirector(name: "Владимир")
let slsManager = SalesManager(name: "Мария", salesCount: 12300, carBrand: "Toyota")
slsManager.name
let buh = Accountant()
buh.printJob()
Company.personal
//4. Создайте класс «Монстр», который будет содержать имя, породу, с какой планеты прилетел, рост, вес, оружие.
//Добавьте несколько свойств класса:
// минимальный рост и максимальный вес монстра;
// минимальную и максимальную мощность оружия.
//Создайте свойство, которое будет содержать количество созданных экземпляров этого класса. 4.1. Создайте наблюдателя, который будет отслеживать наносимый ущерб от оружия монстра.
class Monster{
    static let minHeight = 100
    static let maxWeight = 230
    static let weaponPower = 50...250
    static var Count = 0
    let name: String = ""
    let breed: String = ""
    let planet: String = ""
    var height: Int = 0{
        didSet{
            if height < Monster.minHeight{
                print("установлен минимально разрешенный рост")
                height = Monster.minHeight
            }
        }
    }
    var weight: Int = 0{
        didSet{
            if weight > Monster.maxWeight{
                print("установлен максимально разрешенный вес")
                weight = Monster.maxWeight
            }
        }
    }
    var weapon: Int = 0{
        didSet{
            if weapon < Monster.weaponPower.lowerBound{
                print("некорректное значение. Установлена минимально разрешенная мощность в \(Monster.weaponPower.lowerBound) ед.")
                weapon = Monster.weaponPower.lowerBound
            } else if weapon > Monster.weaponPower.upperBound{
                print("некорректное значение. Установлена максимально разрешенная мощность в \(Monster.weaponPower.upperBound) ед.")
                weapon = Monster.weaponPower.lowerBound
            }
        }
        willSet{
            print("ущерб от оружия монстра теперь \(newValue) ед.")
        }
    }
    
}
let firstMonster = Monster()
firstMonster.height = 40
firstMonster.height
firstMonster.weapon = 30
firstMonster.weapon = 300
firstMonster.weapon = 180
firstMonster.weight = 280
firstMonster.weight

