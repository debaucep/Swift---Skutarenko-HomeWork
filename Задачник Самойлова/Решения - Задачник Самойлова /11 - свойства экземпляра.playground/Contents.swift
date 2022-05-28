import UIKit
import os
//2. Напишите класс Калькулятор. Создать вычисляемые свойства, которые складывают, умножают, делят, вычитают. И выведите результаты в консоль(распечатайте).
class Calculator{
    let firstNumber: Int
    let secondNumber: Int
    var addition: Int{
        firstNumber + secondNumber
    }
    var subtraction: Int{
        firstNumber - secondNumber
    }
    var multiplication: Int{
        firstNumber * secondNumber
    }
    var division: Int{
        if secondNumber == 0{
            return 0
        } else{
            return firstNumber / secondNumber
        }
    }
    init(firstNumber: Int, secondNumber: Int) {
        self.firstNumber = firstNumber
        self.secondNumber = secondNumber
    }
}
let calc = Calculator(firstNumber: 125, secondNumber: 5)
calc.addition
calc.subtraction
calc.multiplication
calc.division
//3.Создайте свой AppStore! Чтобы можно было записывать и сохранять, а потом вызывать новые приложения в каждой категории. Результаты — в консоль.
enum Category: String{
    case music = "музыка"
    case navigation = "навигация"
    case games = "игры"
}
class AppStore{
    var apps = [(Category, App)]()
    func viewApps (){
        print("В маазине есть следующие приложения:")
        for oneApp in apps{
            print("\(oneApp.1.name)\nКатегория: \(oneApp.0.rawValue). Оценка в маркете: \(oneApp.1.score ?? 0)\nПоследний отзыв: \(oneApp.1.feedback ?? "")\n______________________")
        }
    }
    func deleteApp (app: String){
        for (index, oneApp) in apps.enumerated(){
            if app == oneApp.1.name{
                apps.remove(at: index)
                print("Приложение \(app) удалено")
            }
        }
    }
}
class App{
    let name: String
    var score: Int? {
        willSet{
            print("Приложению \(name) - \(String(describing: newValue!)) баллов")
        }
        didSet{
            if score! > 5{
                score = oldValue
                print("Нельзя посавить оценку больше 5")
            }
        }
    }
    var feedback: String?
    init(name: String) {
        self.name = name
    }
}
let app1 = App(name: "Яндекс музыка")
let app2 = App(name: "Навигатор")
let app3 = App(name: "Карты")
let app4 = App(name: "Angry birds")
let app5 = App(name: "Fruit ninja")
var store = AppStore()
store.apps = [(Category.music, app1), (Category.navigation, app2), (Category.navigation, app3), (Category.games, app4), (Category.games, app5)]
//4. Добавьте своему AppStore отзывы. К каждому приложению. В виде текстовых сообщений.
//5. Добавьте возможность поставить оценку приложению. Но не более 5 баллов. Если кто-то пытается вставить 6 или выше — какое-нибудь сообщение.
app1.score = 5
app1.feedback = "пользуюсь давно, все хорошо"
app2.score = 10
app2.score = 5
app2.feedback = "спасибо"
app3.feedback = "все круто, пилите дальше"
app3.score = 5
app4.score = 4
app4.feedback = "нужно больше уровней"
app5.score = 3
app5.feedback = "после обновления все стало тупить"
store.viewApps()
//6. Подумайте, как можно добавить возможность удаления приложений из вашего AppStore. Напишите в коде.

store.deleteApp(app: "Fruit ninja")
store.deleteApp(app: "Angry birds")
store.viewApps()
//ПРОДВИНУТЫЙ УРОВЕНЬ.
//9. Поиграем в войнушку, как в детстве?:)
//Создайте 3 класса: Орк, Человек, Эльф.
//У человека есть свойства (задайте на своё усмотрение), например, weaponDamage и health и функция, которая рассказывает об уроне от оружия.
//Эльф и Орк — наследники Человека. У Орка должен быть Наблюдатель, который сообщает об изменении health.
//У Эльфа — тоже Наблюдатель, который сообщает об изменении weaponDamage (вроде: Оружие Эльфа стало наносить больший урон! Нужно купить броню мощнее).*
class Human{
    var name: String{
        "Человек"}
    var weaponDamage: Int
    var health = 100
    init(weaponDamage: Int) {
        self.weaponDamage = weaponDamage
    }
}
class Orc: Human{
    override var name: String{
        "Орк"}
    override var health: Int{
        willSet{
            print("Здоровье \(name + "а"): \(newValue)hp")
        }
    }
}
class Elf: Human{
    override var name: String{
        "Эльф"
    }
    override var weaponDamage: Int{
        willSet{
            print("Оружие \(name + "а") теперь наносит \(newValue) ед. урона")
        }
    }
}
let human = Human(weaponDamage: 12)
let orc = Orc(weaponDamage: 18)
let elf = Elf(weaponDamage: 9)
orc.health
class Battle{
    let human: Human
    let orc: Orc
    let elf: Elf
    func hit(firstCharacter: Human, kik second: Human){
        print("\(firstCharacter.name) наносит удар \(second.name + "у") -\(firstCharacter.weaponDamage)hp")
        second.health -= firstCharacter.weaponDamage
        if second.health <= 0{
            print("\(second.name) умирает.")
        }
    }
    init(human: Human, orc: Orc, elf: Elf) {
        self.human = human
        self.orc = orc
        self.elf = elf
    }
}
let battle = Battle(human: human, orc: orc, elf: elf)
battle.hit(firstCharacter: human, kik: orc)
orc.health
battle.hit(firstCharacter: elf, kik: orc)
battle.hit(firstCharacter: orc, kik: human)
elf.weaponDamage = 15
battle.hit(firstCharacter: human, kik: orc)
battle.hit(firstCharacter: elf, kik: orc)
battle.hit(firstCharacter: orc, kik: human)
battle.hit(firstCharacter: orc, kik: elf)
human.weaponDamage = 30
battle.hit(firstCharacter: human, kik: orc)
battle.hit(firstCharacter: orc, kik: human)
battle.hit(firstCharacter: orc, kik: elf)
battle.hit(firstCharacter: orc, kik: human)
battle.hit(firstCharacter: orc, kik: elf)
battle.hit(firstCharacter: orc, kik: elf)
battle.hit(firstCharacter: orc, kik: elf)
battle.hit(firstCharacter: orc, kik: elf)
battle.hit(firstCharacter: human, kik: orc)
