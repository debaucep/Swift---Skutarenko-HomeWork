import UIKit
protocol RouterDelegate{
    var nameID: [String]{ get set }
    func saveName(name: String, text: String)
}
protocol UsersProtocol{
    var name: String { get set }
    var age: Int  { get set }
    var delegate: RouterDelegate? { get set }
    init(name: String, age: Int, delegate: RouterDelegate?)
}
class Router: RouterDelegate{
    var nameID = [String]()
    func saveName(name: String, text: String) {
        let message = ("\(name): \(text)")
        nameID.append(message)
    }
}
class User: UsersProtocol{
    var name: String
    var age: Int
    var delegate: RouterDelegate?
    func sendMail(name: String, text: String) -> Bool{
        delegate?.saveName(name: name, text: text)
        return true
    }
    required init(name: String, age: Int, delegate: RouterDelegate?) {
        self.name = name
        self.age = age
        self.delegate = delegate
    }
}
let routerDelegate = Router()
let user1 = User(name: "Владимир", age: 33, delegate: routerDelegate)
let user2 = User(name: "Сергей", age: 37, delegate: routerDelegate)
user1.sendMail(name: "Сергей", text: "Здарово! Давно не виделись! Ну, что по чём?")
user2.sendMail(name: "Владимир", text: "Ахахх, привееет, рад снова видеть!")
routerDelegate.nameID


//1) Создайте 3 класса. Назовите их Apple, Google, Microsoft. Пусть в каждом будет имя, количество товара, задолженность. И метод - itemEnded().
protocol Company{
    var name: String { get }
    var quantityOfGoods: Int { get set }
    var arrears: Int  { get set }
    func itemEnded()
}
class Apple: Company{
    var name: String
    var quantityOfGoods: Int
    var arrears: Int
    var factory: IndependentFactoryDelegate?
    func complainsAboutQuality(text: String){
        factory?.addComplains(text: text)
    }
    func itemEnded() {}
    init(name: String, quantityOfGoods: Int, arrears: Int, factory: IndependentFactoryDelegate?) {
        self.name = name
        self.quantityOfGoods = quantityOfGoods
        self.arrears = arrears
        self.factory = factory
    }
}
class Google: Company{
    var name: String
    var quantityOfGoods: Int
    var arrears: Int
    var factory: FactoryDelegate?
    func complainsAboutQuality(text: String){
        factory?.addComplains(text: text)
    }
    func itemEnded() {}
    init(name: String, quantityOfGoods: Int, arrears: Int, factory: FactoryDelegate?) {
        self.name = name
        self.quantityOfGoods = quantityOfGoods
        self.arrears = arrears
        self.factory = factory
    }
}
class Microsoft: Company{
    var name: String
    var quantityOfGoods: Int
    var arrears: Int
    var factory: FactoryDelegate?
    func complainsAboutQuality(text: String){
        factory?.addComplains(text: text)
    }
    func itemEnded() {}
    init(name: String, quantityOfGoods: Int, arrears: Int, factory: FactoryDelegate?) {
        self.name = name
        self.quantityOfGoods = quantityOfGoods
        self.arrears = arrears
        self.factory = factory
    }
}
//2) Создайте делегат — Завод. У него создайте методы: payOffDebt() и shipProduct().
//3) Когда у класса нет задолженности и мало товара — завод отгружает новый товар.
class FactoryDelegate{
    var complains = [String]()
    func addComplains(text: String){
        complains.append(text)
    }
    func payOfDebit(){}
    func shipProduct(){}
}
//4) Создайте второй завод-делегат, независимый. У него будет просто метод shipProduct(). Он не учитывает задолженность класса.
class IndependentFactoryDelegate{
    func shipProduct(){}
    var complains = [String]()
    func addComplains(text: String){
        complains.append(text)
    }
}
//5) Сделайте так, чтобы Google и Microsoft брали товар у первого завода, а Apple — у второго. Создайте 5-6 экземпляров каждого класса.
//6) Создайте третий завод-делегат.Также независимый. Задайте ему список производимых деталей: корпус, стекло, железо, камера и т.п.
enum ComponentParts{
    case housing, glass, board, camera
}
class ThirdIndepFactoryDelegate{
    var component = ComponentParts.board
    func salesReport(){}
}

//7) Сделайте так, чтобы Apple покупала у него только стекло и камеры, Google — корпус, Microsoft — железо и другие детали. И заявлять, что именно они покупают.
//8) У третьего завода создайте метод: первый будет создавать отчет о продажах (говорить кто и что купил).
//9) В классах создайте свойство: СomplainsAboutQuality. Сделайте так, чтобы каждый смог отправить жалобу своему делегату-заводу.
//10) Создайте 10-12 жалобщиков. Сделайте так, чтобы Apple покупала у первого завода, Google — покупала только железо, а Microsoft — покупала у второго.
