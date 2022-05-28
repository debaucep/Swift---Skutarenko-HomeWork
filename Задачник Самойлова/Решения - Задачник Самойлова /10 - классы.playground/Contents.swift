import UIKit
//2) Написать консольное приложение, в котором создать класс *House* и в нем несколько свойств - *width*, *height* и несколько методов - *build* (выводит на экран умножение ширины и высоты), *getWidth* и *getHeight* выводят на экран соответсвенно ширину и высоту.
class House{
    let width: Int
    let height: Int
    var build: Int {
        width * height
    }
    func getWidth(){
        print("Ширина: \(width)")
    }
    func getHeight(){
        print("Высота: \(height)")
    }
    init(width: Int, height: Int) {
        self.width = width
        self.height = height
    }
}
let house = House(width: 200, height: 40)
house.getHeight()
house.getWidth()
//3) Написать класс , а в нем метод который будет принимать букву (одну, может быть и типа string, просто будете передавать ему одну букву) и возвращать все имена которые начинаются на эту букву.
//К примеру, А - Алексей, Александр, Артем, Антон и т. д. Внутри метода или полем класса (тут как удобно, не сильно критично) будет задаваться массив строк (string) в котором будут прописаны имена. Имена откуда-то подгружать не надо, их надо просто захардкодить. Метод должен возвращать отфильтрованный массив с именами.
let namesArr = ["Забава", "Злата", "Зинаида", "Антонина", "Алексей", "Анна", "Мария", "Артур", "Владимир"]
class FilterName{
    let word: String
    var names: [String]{
        var emptyArr = [String]()
        for oneName in namesArr{
            if oneName.hasPrefix(word){
                emptyArr.append(oneName)
            }
        }
        return emptyArr
    }
    func filter(namesfilter: [String]){
        for oneNameFilter in namesfilter{
            for oneName in names{
                if oneNameFilter == oneName{
                    print(oneNameFilter)
                }
            }
        }
    }
    init(word: String) {
        self.word = word
    }
}
let namesForA = FilterName(word: "А")
print(namesForA.names)
let namesForZ = FilterName(word: "З")
print(namesForZ.names)
//Так же написать метод, который будет принимать массив строк как аргумент и выводить их всех на консоль с новой строки каждое имя. Им распечатаете на консоль то что у вас получилось отфильтровать.
namesForZ.filter(namesfilter: ["Забава", "Злата", "Зоя"])
namesForA.filter(namesfilter: ["Антонина", "Мария", "Антон", "Александра"])
//4) Написать класс, который формирует массив учеников, сортирует и считает количество этих учеников. Если учеников больше чем 30, выводится сообщение типа «в школе нет мест».
class TrainingClass{
    let name = ""
    static var count = 0
    init(){
        if TrainingClass.count >= 5{
            print("В школе нет мест")
        }
        TrainingClass.count += 1
    }
}
let student1 = TrainingClass()
let student2 = TrainingClass()
TrainingClass.count
let student3 = TrainingClass()
let student4 = TrainingClass()
let student5 = TrainingClass()
let student6 = TrainingClass()
let student7 = TrainingClass()
TrainingClass.count
//6) Сделайте список покупок! Программа записывает продукты в массив. Если вызываем определённый продукт — в консоли пишем к примеру «Мёд — куплено!».
var checkList = ["Колбаса": false,
                 "Зелень": false,
                 "Сыр": false,
                 "Молоко": false,
                 "Курица": false,
                 "Картофель": false]
func purchased(product: String){
    for oneProduct in checkList{
        if product == oneProduct.key{
            print("\(product) - куплено!")
            checkList[product] = nil
        }
    }
    if checkList.isEmpty{
        print("Список закончен")
    }
}
purchased(product: "Колбаса")
purchased(product: "Зелень")
purchased(product: "Сыр")
purchased(product: "Молоко")
purchased(product: "Курица")
purchased(product: "Картофель")
