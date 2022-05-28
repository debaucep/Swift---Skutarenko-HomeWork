import UIKit
import Darwin
//1) Создайте класс Карта. Задайте ему набор координат. Задайте каждой координате название. К примеру: горы, река, замок, пустошь, неизвестная местность.
//2) Задайте каждой координате окраску.
//3) Создайте класс персонажа, который будет двигаться по координатам.
//4) Создайте проверку: если персонаж попал, к примеру, в красные горы, то выводите сообщение на консоль.
enum Terrain: String{
    case mountain = "гора"
    case river = "река"
    case castle = "замок"
    case wasteland = "пустошь"
    case unknown = "неизвестная местность"
}
enum Color: String{
    case red = "красная"
    case green = "зеленая"
    case blue = "синяя"
    case black = "черная"
}
class Map{
    var coordinates = [Int: (place: Terrain, color: Color)]()
    static var placesCount = 8
    func createMap(){
        for index in 1...Map.placesCount{
            let randForEnum = Int.random(in: 1...5)
            let randForEnum2 = Int.random(in: 1...4)
            var newPlace = Terrain.unknown
            var newColor = Color.black
            switch randForEnum{
            case 1: newPlace = .mountain
            case 2: newPlace = .river
            case 3: newPlace = .castle
            case 4: newPlace = .wasteland
            default: break
            }
            switch randForEnum2{
            case 1: newColor = .red
            case 2: newColor = .green
            case 3: newColor = .blue
            default: break
            }
            coordinates[index] = (place: newPlace, color: newColor)
        }
    }
    func move(person: Person, to cell: Int){
        if cell > Map.placesCount{
            print("некоррекная координата")
        } else {
            print("\(person.name) попал в \(coordinates[cell]!.color.rawValue) \(coordinates[cell]!.place.rawValue)")
        }
    }
}
class Person{
    let name: String
    init(name: String) {
        self.name = name
    }
}
let human = Person(name: "Варвар")
let travelMap = Map()
travelMap.createMap()
travelMap.move(person: human, to: 5)
travelMap.move(person: human, to: 1)
travelMap.move(person: human, to: 9)
//ПРОДВИНУТЫЙ УРОВЕНЬ.
//1) Создайте своё войско, которые будут располагаться каждый на определённой координате.
//2) Создайте наблюдателей, которые будут отслеживать: если персонаж перешёл на клетку, которая занята другим персонажем — выводите сообщение, например: «Орки объявили войну Эльфам».
//3) Добавьте алгоритм, который отслеживает чтобы нельзя было занять чужую координату.
//4) Добавьте метод, который позволяет персонажам обмениваться местами.
//5) Добавьте персонажам возможность наносить удары по координатам. Если есть попадание: выводите соответствующее сообщение в консоль и удаляйте персонажа.
//6) Добавьте возможность соревнования.
