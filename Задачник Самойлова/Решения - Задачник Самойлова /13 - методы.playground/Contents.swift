import UIKit
//1) Создайте класс Программист.
//Задайте следующие свойства:
//a) язык программирования,
//b) библиотеки, которые программист знает,
//c) паттерны, которые программист знает,
//d) английский язык,
//e) наличие портфолио.
//2) Напишите метод который будет распечатывать эти свойства в консоль.
//3) Создайте класс HRManager.
//4) Напишите метод, который будет оценивать знания программиста и решать: брать на работу или нет.
//Результат в консоли: «Не знает что такое MVC.Надо подумать.» и т. п.
//ПРОДВИНУТЫЙ УРОВЕНЬ.
//1) Создайте наблюдателя, который отслеживает: прошёл ли программист собеседование. И если нет — добавьте этого программиста в массив.
class Programmer{
    let language: String
    let libraries: [String]
    let patterns: [String]
    let english: Bool
    let portfolio: Bool
    func knowledge(){
        print("Навыки программиста:")
        print("Язык программирования: \(language)")
        print("Библиотеки:")
        for oneLibrary in libraries{
            print("\(oneLibrary), ", terminator: "")
        }
        print("\nПаттерны:")
        for onePattern in patterns{
            print("\(onePattern), ", terminator: "")
        }
        print("\nЗнание английского: \(english ? "да" : "нет"), портфолио: \(portfolio ? "да" : "нет")")
    }
    init(laguage: String, libraries: [String], patterns: [String], english: Bool, portfolio: Bool) {
        self.language = laguage
        self.libraries = libraries
        self.patterns = patterns
        self.english = english
        self.portfolio = portfolio
    }
}
let firstProgrammer = Programmer(laguage: "Swift", libraries: ["1", "2", "3"], patterns: ["MVF", "MVC", "AAC"], english: true, portfolio: true)
let secondProgrammer = Programmer(laguage: "C++", libraries: ["1", "2"], patterns: ["MVC", "MVC", "AAC"], english: false, portfolio: false)
firstProgrammer.knowledge()
var archive = [Programmer]()
class HRManager{
    func check(programmer: Programmer){
        var knowledgeCount = 0
        print("Проверка следующего кандидата.")
        if programmer.libraries.count > 2{
            print("Знает больше двух библиотек")
            knowledgeCount += 1
        } else if programmer.libraries.count == 1{
            print("Знание одной библиотеки")
        }
        if programmer.english{
            print("Знает английский, хорошо")
            knowledgeCount += 1
        } else{
            print("Не знает английского, зачем такой нужен")
        }
        if programmer.portfolio{
            print("Есть портфолио")
            knowledgeCount += 1
        } else{
            print("Нет портфолио")
        }
        if programmer.patterns.firstIndex(of: "MVC") != nil{
            print("знает паттерн mvc")
            knowledgeCount += 1
        } else{
            print("Не знает паттерна mvc")
        }
        if knowledgeCount >= 3{
            print("Принять на работу, \(knowledgeCount) баллов из 4 возможных")
        } else{
            print("Кандидат не прошел тест, \(knowledgeCount) баллов из 4 возможных")
            archive.append(programmer)
        }
    }
}
let hr = HRManager()
hr.check(programmer: firstProgrammer)
hr.check(programmer: secondProgrammer)
archive
