import UIKit
//1) Создайте класс Планета. Задайте ему 3 свойства: название, размер, цвет.
enum Planets{
    case Mars, Saturn, Dark, Pluto, Jupiter, Venus
}
enum Color{
    case red, yellow, black, blue, green, white
}
class Planet{
    var name: Planets
    var size: Int
    var color: Color
    init(name: Planets, size: Int, color: Color) {
        self.name = name
        self.size = size
        self.color = color
    }
}
//2) Создайте класс Марс. Сделайте его наследников класса Планета. Скройте(инкапсулируйте) его цвет и добавьте новое свойство: население.
//3) Марсу сделайте метод changeSize. С таким условием, что каждый раз когда этот метод вызывается — размер Марса увеличивается в 2 раза.
class Mars: Planet{
    override var color: Color{
        get{
            Color.red
        }
        set{}
    }
    override var name: Planets{
        get{
            Planets.Mars
        }
        set{}
    }
    var population = 0
    func changeSize() -> Int{
        size * 2
    }
    init(size: Int, population: Int) {
        super.init(name: .Mars, size: 0, color: .red)
        self.size = size
        self.population = population
    }
}
//4) Создайте класс Сатурн. Добавьте ему свойство Кольца типа Bool. Выполните условие: когда размер планеты превышает 30, кольца видны, если меньше 10 — кольца не видны.
class Saturn: Planet{
    var ring: Bool?{
        if size > 30{
            return true
        } else if size < 10{
            return false
        }
        return nil
    }
}
//5) Создайте 5-6 экземпляров каждого класса. Добавьте их в массив и проверьте: какого типа все эти экземпляра.
let somePlanet1 = Planet(name: .Venus, size: 12, color: .blue)
let somePlanet2 = Planet(name: .Pluto, size: 8, color: .white)
let somePlanet3 = Planet(name: .Jupiter, size: 25, color: .green)
let mars1 = Mars(size: 12, population: 3)
mars1.size
mars1.size = mars1.changeSize()
mars1.size
mars1.size = mars1.changeSize()
mars1.size
let mars2 = Mars(size: 13, population: 4)
let mars3 = Mars(size: 16, population: 6)
let saturn1 = Saturn(name: .Saturn, size: 35, color: .yellow)
saturn1.ring!
let saturn2 = Saturn(name: .Saturn, size: 5, color: .yellow)
saturn2.ring!
let saturn3 = Saturn(name: .Saturn, size: 15, color: .yellow)
saturn3.ring
let allPlanets: [AnyObject] = [somePlanet1, somePlanet2, somePlanet3, mars1, mars2, mars3, saturn1, saturn2, saturn3]
var (marsValue, saturnValue, somePlanetValue) = (0, 0, 0)
for onePlanet in allPlanets{
    if onePlanet is Mars{
        marsValue += 1
    } else if onePlanet is Saturn{
        saturnValue += 1
    } else if onePlanet is Planet{
        somePlanetValue += 1
    }
}
marsValue
saturnValue
somePlanetValue
//1) Создайте класс Темная планета. Сделайте так, чтобы он уничтожал все другие планеты. Примечание: вспоминаем ARC
class DarkPlanet: Planet{
    func destroy(this: Planet){
    }
}
let starKiller = DarkPlanet(name: .Dark, size: 30, color: .black)
starKiller.destroy(this: saturn3)
saturn3
//2) Создайте класс Марсианин. Сделайте его наследником класса Марс. Создайте ему свойство humanoid.
class Martian: Mars{
    static var humanoid = 0
}
var martian1 = Martian(size: 0, population: 0)
var martian2 = Martian(size: 0, population: 0)
//3) Сделайте проверку типа: если он принадлежит классу Марс, то прибавьте к humanoid 1 и добавьте в массив.
let allMartians = [martian1, martian2]
var martianPopulation = [Martian]()
for oneMartian in allMartians{
    Martian.humanoid += 1
    martianPopulation.append(oneMartian)
}
Martian.humanoid
martianPopulation
