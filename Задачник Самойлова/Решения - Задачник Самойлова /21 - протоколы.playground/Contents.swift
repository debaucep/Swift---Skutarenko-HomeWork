import UIKit
//21. Протоколы
//1) Создайте протокол Собеседование. У него есть свойство: фамилия. И методы: successOfinterview и failureOfInterview.
protocol Interview{
    var name: String { get }
    func successOfInterview()
    func failureOfInterview()
}
protocol TechnicInterview: Interview{
    var isSuitable: Bool { get }
    func successTechnicalOfinterview()
    func failureTechnicalOfInterview()
}
//2) Создайте класс Программист. У него задайте свойства: skill типа String и inSearchOfJob типа Bool. Сделайте их опциональными. Программисту подключите протокол Собеседование.
//3) Добавьте 2 массива, в которые будете добавлять программистов. Вроде okArray и failArray.
//4) В методе successOfinterview сделайте проверку свойства inSearchOfJob. Если true — выводите сообщение «Подходит» и добавляйте имя в массив + сортируйте его по алфавиту.
//5) В методе failureOfInterview просто выводите сообщение: «Не подходит».
//6) Добавьте наблюдателя, который будет отслеживать как добавляются подходящие программисты.
//7) Добавьте протокол Техническое собеседование (наследник Собеседования). Добавьте ему свойство isSuitable типа Bool и методы: successTechnicalOfinterview и failureTechnicalOfInterview.
//8) successTechnicalOfinterview проверяет inSearchOfJob и skill: если inSearchOfJob == true, а skill == «ios», то добавляет этого программиста в массив okArray. И выводит сообщение об успешно пройденном собеседовании. «Вы нам подходите. Ждите оффер».
//9) failureTechnicalOfInterview просто выводит сообщение «Нам жаль, но программист(имя) не прошёл собеседование».
class Programmer: TechnicInterview{
    static var okArray = [String](){
        willSet{
            print("Программист \(newValue) добавлен в okArray")
        }
    }
    static var failArray = [String]()
    let name: String
    var skill: String?
    var inSearchOfJob: Bool?
    let isSuitable: Bool
    private func addingToArray(){
        Programmer.okArray.append(name)
        Programmer.okArray.sort(by: <)
    }
    func successOfInterview() {
        if inSearchOfJob != nil{
            if  inSearchOfJob! == true{
                addingToArray()
            }
        }
    }
    func failureOfInterview() {
        print("Не подходит")
        ResumeBase.failArray.append(name)
    }
    func successTechnicalOfinterview() {
        if inSearchOfJob != nil && skill != nil{
            if inSearchOfJob! == true && skill! == "Swift"{
                addingToArray()
                print("\(name), вы нам подходите, ждите оффер")
            }
        }
    }
    func failureTechnicalOfInterview() {
        print("Нам жаль, но программист \(name) не прошёл собеседование")
        ResumeBase.failArray.append(name)
    }
    init(name: String, isSuitable: Bool) {
        self.name = name
        self.isSuitable = isSuitable
    }
}
//10) Создайте класс Тестировщик. Подключите ему протоколы Собеседование, Техническое собеседование. Также добавьте свойство exp(опыт) типа Int и имя типа String.
//11) Сделайте простую проверку: если опыт больше 3 лет — вызвать метод successOfinterview, который распечатает в консоль: «Тестировщик Егор допущен к техническому собеседованию». А если меньше 3 лет - в методе failureOfInterview просто выводите сообщение: «Егор не подходит».
//12) Добавьте тестировщику свойство skills и 2 массива, по аналогии с Программистом. Метод successTechnicalOfinterview проверяет skills: если skill == «QA», то добавляет этого тестировщика в массив okArray. И выводит сообщение об успешно пройденном собеседовании. «Вы нам подходите. Ждите оффер».
//13) failureTechnicalOfInterview просто выводит сообщение «Нам жаль, но тестировщик (имя) не прошёл собеседование».
class Tester: TechnicInterview{
    static var okArray = [String](){
        willSet{
            print("Тестировщик \(newValue) добавлен в okArray")
        }
    }
    static var failArray = [String]()
    let name: String
    var isSuitable: Bool
    var skill: Int = 0{
        willSet{
            if newValue > 3{
                print("Служебный принт")
                successOfInterview()
            } else{
                print("Служебный принт")
                failureOfInterview()
            }
        }
    }
    var inSearchOfJob: Bool?
    let skills: String
    func successTechnicalOfinterview() {
        if skills == "QA"{
            Tester.okArray.append(name)
            print("Вы нам подходите. Ждите оффер")
        }
    }
    func failureTechnicalOfInterview() {
        print("Нам жаль, но тестировщик \(name) не прошёл собеседование")
        ResumeBase.failArray.append(name + "!")
        
    }
    func successOfInterview() {
        print("Тестировщик \(name) допущен к техническому собеседованию")
    }
    func failureOfInterview() {
        ResumeBase.failArray.append(name + "!")
        ResumeBase.failArray.append(name)
    }
    init(name: String, isSuitable: Bool, skills: String) {
        self.name = name
        self.isSuitable = isSuitable
        self.skills = skills
    }
}
//14) Создайте 10-15 тестировщиков и программистов.
let programmer1 = Programmer(name: "Владимир", isSuitable: true)
(programmer1.inSearchOfJob, programmer1.skill) = (true, "Swift")
let programmer2 = Programmer(name: "Сергей", isSuitable: true)
programmer2.inSearchOfJob = true
let programmer3 = Programmer(name: "Забава", isSuitable: true)
(programmer3.inSearchOfJob, programmer3.skill) = (true, "Swift")
let programmer4 = Programmer(name: "Злата", isSuitable: true)
(programmer3.inSearchOfJob, programmer3.skill) = (true, "Swift")
let programmer5 = Programmer(name: "Анастасия", isSuitable: true)
programmer5.inSearchOfJob = true
let programmer6 = Programmer(name: "Елизавета", isSuitable: true)
programmer6.skill = "Swift"
let programmer7 = Programmer(name: "Татьяна", isSuitable: true)
programmer7.skill = "1C"
let tester1 = Tester(name: "Егор", isSuitable: true, skills: "QA")
tester1.skill = 3
let tester2 = Tester(name: "Пётр", isSuitable: true, skills: "QA")
tester2.skill = 3
let tester3 = Tester(name: "Иван", isSuitable: true, skills: "Swift")
tester3.skill = 1
let tester4 = Tester(name: "Зинаида", isSuitable: true, skills: "CSS")
tester4.skill = 3
let tester5 = Tester(name: "Александр", isSuitable: true, skills: "1C")
tester5.skill = 4
let tester6 = Tester(name: "Антонина", isSuitable: true, skills: "C++")
tester6.skill = 5
let tester7 = Tester(name: "Чупакабра", isSuitable: true, skills: "QA")
tester7.skill = 6
let candidates: [TechnicInterview] = [programmer1, programmer2, programmer3, programmer4, programmer5, programmer6, programmer7, tester1, tester2, tester3, tester4, tester5, tester6, tester7]
for oneCandidate in candidates{
    oneCandidate.successOfInterview()
    oneCandidate.failureOfInterview()
    oneCandidate.successTechnicalOfinterview()
    oneCandidate.failureTechnicalOfInterview()
}
Programmer.okArray
//15) Создайте отдельный тип База Резюме. В нём объедините всех программистов и тестировщиков в общую коллекцию.
//16) В массив failArray добавьте тех, кто не прошёл собеседование. Распределите их по отдельным массивам и найдите в каждом самое длинное имя.
//Выведите его в консоль.
class ResumeBase{
    static var failArray = [String]()
    var failTester: [String] {
        var emptyArray = [String]()
        for oneTester in ResumeBase.failArray{
            if oneTester.hasSuffix("!"){
                let a = oneTester.dropLast()
                emptyArray.append(String(a))
            }
        }
        return emptyArray
    }
    var failProgrammer: [String]{
        var emptyArray = [String]()
        for oneTester in ResumeBase.failArray{
            if oneTester.hasSuffix("!"){
                continue
            } else{
                emptyArray.append(oneTester)
            }
        }
        return emptyArray
    }
    func mostLongerName (from: [String]){
        let sortedArray = from.sorted{ (a, b) in
            a.count > b.count
        }
        print("Самое длинное имя - \(sortedArray[0])")
    }
}
ResumeBase.failArray
let resumeBase = ResumeBase()
resumeBase.failProgrammer
resumeBase.failTester
resumeBase.failProgrammer.count
resumeBase.failTester.count
resumeBase.mostLongerName(from: resumeBase.failTester)
resumeBase.mostLongerName(from: resumeBase.failProgrammer)
