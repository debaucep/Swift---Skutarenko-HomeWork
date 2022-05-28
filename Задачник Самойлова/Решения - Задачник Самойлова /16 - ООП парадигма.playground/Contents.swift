import UIKit
//1) Создайте класс IT-компания. У него есть свойства: имя, должность, опыт, зарплата. И метод: workHard.
//Соответственно, экземпляры вашего класса должны каждый делать что-то своё: программист кодит, дизайнер создаёт дизайны, тестировщик — тестирует, проект-менеджер общается с клиентами.
//Создайте методы writeCode, testABug, createAdesign, CallToClients. Сообщаем их действия в консоль.
enum Post{
    case programmer
    case designer
    case tester
    case productManager
}
class ITCompany{
    var name: String
    let post: Post
    let experiense: Int
    let salary: Int
    static var bugs = 0
    func catchBugs(){
        if post == .tester{
            ITCompany.bugs += 1
            print("\(name) отправил на исправление")
        }
    }
    func fixBugs(){
        if post == .programmer{
            ITCompany.bugs -= 1
            print("\(name) почистил баги")
        }
    }
    func workHard(){
        switch post{
        case .programmer: writeCode()
        case .designer: createADesign()
        case .productManager: callToClients()
        case.tester: testABug()
        }
    }

    private func writeCode(){
        print("\(name) пишет код")
    }
    func writeCode(workAt: Designers){
        if post == .programmer{
            if workAt.prototypes.isEmpty{
                print("Проект готов. Отправляю тестировщику")
            } else {
                workAt.prototypes.remove(at: 0)
            }
        }
    }
    private func testABug(){
        print("\(name) тестирует")
    }
    private func createADesign(){
        print("\(name) создает дизайны")
    }
    func createADesign(workAt: Designers, prototype: String){
        if post == .designer{
            if workAt.prototypes.count < 10{
                workAt.prototypes.append(prototype)
            } else{
                print("Дизайн готов.Передаю в работу программисту")
            }
        }
    }
    private func callToClients(){
        print("\(name) общается с клиентами")
    }
    init(name: String, post: Post, experiense: Int, salary: Int) {
        self.name = name
        self.post = post
        self.experiense = experiense
        self.salary = salary
    }
}
let programmer = ITCompany(name: "Владимир", post: .programmer, experiense: 3, salary: 1000)
let designer = ITCompany(name: "Мария", post: .designer, experiense: 1, salary: 500)
let tester = ITCompany(name: "Забава", post: .tester, experiense: 2, salary: 300)
let productManager = ITCompany(name: "Злата", post: .productManager, experiense: 5, salary: 1200)
programmer.workHard()
designer.workHard()
tester.workHard()
productManager.workHard()
ITCompany.bugs
tester.catchBugs()
tester.catchBugs()
tester.catchBugs()
designer.fixBugs()
designer.fixBugs()
designer.fixBugs()
programmer.fixBugs()
ITCompany.bugs

//2) Создайте классу свойство bugs типа Int. Создайте методы СatchBugs, FixBugs.
//3) Тестировщик вызывает метод СatchBugs, который прибавляет 1 к свойству bugs.
//4) Программист вызывает метод CreateBugs, который отнимает от bugs 1 каждый раз при вызове.
//5) Отследите момент, когда багов стало больше и пусть тестировщик скажет: отправил на исправление.
//6) Отследите момент когда багов стало меньше и сделайте соответствующее объявление от программиста.
//7) Создайте класс-наследник IT-компании.Назовите его Designers. Создайте ему ему массив prototypes. Сделать проверку: если он пустой, добавлять туда значения. В методе createAdesign.
class Designers: ITCompany{
    var prototypes = [String]()
}

let remoteOffice = Designers(name: "", post: .designer, experiense: 0, salary: 0)
for _ in 0...12{
    designer.createADesign(workAt: remoteOffice, prototype: "новый макет")
}
remoteOffice.prototypes.count
for _ in 0...12{
    programmer.writeCode(workAt: remoteOffice)
}
programmer.name
remoteOffice.name
remoteOffice.name = "Денис Петрович"
remoteOffice.name
//8) Если в prototypes значений стало больше чем 10 — сделать сообщение: «Дизайн готов.Передаю в работу программисту».
//9) Каждый раз, когда вызывается метод writeCode — количество значений в массиве prototypes уменьшается на 1.
//10) После того, как из prototypes уберёте все значения — программист выводит сообщение: «Проект готов. Отправляю тестировщику».
//11) Добавьте дизайнеру следующее: когда пытаетесь присвоить ему имя, он его постоянно меняет на какое-то своё.

