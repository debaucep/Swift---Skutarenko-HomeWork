import UIKit
//1) Создать класс Животное. Ему назначьте свойства: собака, кошка, свинья, корова, курица, лев, ягуар и т.п.
//Пусть их будет не меньше 20.
//2) Каждому животному задайте тип: домашнее, дикое, опасное.
//3) Создайте метод, который фильтрует животных по типу и добавляет их в определённый массив.
enum AnimalType: String{
    case dog = "собака"
    case cat = "кошка"
    case pig = "свинья"
    case cow = "корова"
    case chicken = "курица"
    case lion = "лев"
    case jaguar = "ягуар"
    case marten = "куница"
    case wolf = "волк"
}
enum Domestication{
    case home, wild, dangerous
}
class Animal{
    var type: AnimalType
    var domestication: Domestication
    init(type: AnimalType, domestication: Domestication){
        self.type = type
        self.domestication = domestication
    }
}
let cat = Animal(type: .cat, domestication: .home)
let dog = Animal(type: .dog, domestication: .home)
let pig = Animal(type: .pig, domestication: .home)
let cow = Animal(type: .cow, domestication: .home)
let chicken = Animal(type: .chicken, domestication: .home)
let lion = Animal(type: .lion, domestication: .dangerous)
let jaguar = Animal(type: .jaguar, domestication: .dangerous)
let marten = Animal(type: .marten, domestication: .wild)
var animals = [cat, dog, pig, cow, chicken, lion, jaguar, marten]
var homeAnimal = [Animal]()
var wildAnimal = [Animal]()
var dangerousAnimal = [Animal]()
func checkAnimals(allAnimals: [Animal]){
    for oneAnimal in allAnimals{
        switch oneAnimal.domestication{
        case .wild: wildAnimal.append(oneAnimal)
        case.dangerous: dangerousAnimal.append(oneAnimal)
        case .home: homeAnimal.append(oneAnimal)
        }
    }
}
checkAnimals(allAnimals: animals)
homeAnimal
wildAnimal
dangerousAnimal
//4) Создайте класс Фермер. Ему назначьте свойства: имя, должность, зарплата.
//5) Создайте 10-20 фермеров. Каждому назначьте разные имена, должности и зарплаты. Посчитайте, кто из них получает наибольшую зарплату.
//6) С помощью перечислений распределите их по половому признаку. Создайте метод, который фильтрует женщин и мужчин и добавляет в разные массивы.
//Массивы распечатать в консоль.
//7) У мужчин вызывать метод hardWork, у женщин — homeWork.
//HardWork будет просто говорить: «работаю в поле», homeWork - «Убираю в доме».

enum Gender{
    case male, female
}
class Farmer{
    let name: String
    let position = "фермер"
    let salary: Int
    init(name: String, salary: Int) {
        self.name = name
        self.salary = salary
    }
}
let farmer1 = Farmer(name: "Владимир", salary: 80000)
let farmer2 = Farmer(name: "Сергей", salary: 30000)
let farmer3 = Farmer(name: "Пётр", salary: 44000)
let farmer4 = Farmer(name: "Александр", salary: 53000)
let farmer5 = Farmer(name: "Андрей", salary: 12000)
let farmer6 = Farmer(name: "Мария", salary: 28000)
let farmer7 = Farmer(name: "Забава", salary: 65000)
let farmer8 = Farmer(name: "Злата", salary: 82000)
let farmer9 = Farmer(name: "Антонина", salary: 98000)
let farmer10 = Farmer(name: "Виолетта", salary: 43000)
let farmer11 = Farmer(name: "Зинаида", salary: 65000)
let farmer12 = Farmer(name: "Елена", salary: 77000)
let farmer13 = Farmer(name: "Анастасия", salary: 44000)
let farmer14 = Farmer(name: "Анатолий", salary: 76000)
let farmer15 = Farmer(name: "Андрей", salary: 81000)
let allFarmers = [farmer1, farmer2, farmer3, farmer4, farmer5, farmer6, farmer7, farmer8, farmer9, farmer10, farmer11, farmer12, farmer13, farmer14, farmer15]
func checkMaxSalary(from all: [Farmer]){
    let sortedFarmers = all.sorted{(first, second) in
        first.salary > second.salary
    }
    let maxSalary = sortedFarmers[0]
    print("\(maxSalary.name) имеет самую большую зарплау в \(maxSalary.salary) рублей")
}
checkMaxSalary(from: allFarmers)
//8) Создайте класс Охотник. У него создайте метод, который будет искать опасных и диких животных (см. Задание 1.2) и «убивать» их.
//Результат в консоли: «Охотник убил змею».Соответственно, количество элементов массива сокращается.
enum Speciality: String{
    case snakeCatcher = "змеелов"
    case ratcatcher = "крысолов"
    case thickhead = "тупоголов"
}
class Hunter{
    let name: String
    let speciality: Speciality
    func shoot(from animalsArray: inout [Animal]){
        func addWildAnimals(){
            let lion = Animal(type: .lion, domestication: .dangerous)
            let jaguar = Animal(type: .jaguar, domestication: .dangerous)
            let marten1 = Animal(type: .marten, domestication: .wild)
            let wolf = Animal(type: .wolf, domestication: .dangerous)
            let marten2 = Animal(type: .marten, domestication: .wild)
            animalsArray.append(lion)
            animalsArray.append(jaguar)
            animalsArray.append(marten1)
            animalsArray.append(marten2)
            animalsArray.append(wolf)
        }
    killOne: for (index, oneAnimal) in animalsArray.enumerated(){
        if oneAnimal.domestication == .dangerous || oneAnimal.domestication == .wild{
            print("\(self.name) убил \(oneAnimal.type.rawValue)")
            animalsArray.remove(at: index)
            break killOne
        }
    }
        var checkWilds = 0
        for oneAnimals in animalsArray{
            switch oneAnimals.domestication{
            case .wild: checkWilds += 1
            case .dangerous: checkWilds += 1
            case .home: break
            }
        }
        if checkWilds == 0{
            addWildAnimals()
            print("Добавлены новые животные!")
        } else{
            print("Осталось \(checkWilds) вредителя")
        }
    }
    init(name: String, speciality: Speciality) {
        self.name = name
        self.speciality = speciality
    }
}
let hunter1 = Hunter(name: "Ведьмак", speciality: .ratcatcher)
let hunter2 = Hunter(name: "Снейк", speciality: .snakeCatcher)
let hunter3 = Hunter(name: "Помощник", speciality: .thickhead)
let allHunters = [hunter1, hunter2, hunter3]
for oneHunter in allHunters{
    print("\(oneHunter.name) имеет специальность \(oneHunter.speciality.rawValue)")
}
hunter1.shoot(from: &animals)
hunter1.shoot(from: &animals)
hunter1.shoot(from: &animals)
hunter1.shoot(from: &animals)
hunter2.shoot(from: &animals)
hunter3.shoot(from: &animals)
animals

//9) Отследите: если массив с дикими животными больше не содержит значений, добавляйте в массив с опасными животными новые значения.
//10) Создайте Охотнику свойства: имя и специальность. К примеру, змеелов. Создайте 5-7 таких охотников, разных специальностей. Распечатайте в консоль.
//11) Создайте класс Ферма. Ему задайте метод, который будет объединять всех: и животных, и фермеров, и охотников. Добавьте их в один массив и отсортируйте по алфавиту.
class Farm{
    private var allOnTheFarm = [Any]()
    func add(somebody: Any){
        allOnTheFarm.append(somebody)
    }
    func printAllOnTheFarm(){
        for someOne in allOnTheFarm{
            switch someOne{
            case let hunter as Hunter:
                print("Это \(hunter.name), он охотник. Специальнсть - \(hunter.speciality.rawValue)")
            case let farmer as Farmer:
                print("Это \(farmer.name), он фермер. Зарплата - \(farmer.salary)")
            case let animal as Animal:
                let raw = animal.domestication == .home ? "домашнее животное" : "дикий или опасный"
                print("Это \(animal.type.rawValue), \(raw)")
            default: break
            }
        }
    }
}
let farm = Farm()
farm.add(somebody: hunter1)
farm.add(somebody: hunter2)
farm.add(somebody: hunter3)
for index in 0...allFarmers.count - 1{
    farm.add(somebody: allFarmers[index])
}
for index in 0...animals.count - 1{
    farm.add(somebody: animals[index])
}
farm.printAllOnTheFarm()
