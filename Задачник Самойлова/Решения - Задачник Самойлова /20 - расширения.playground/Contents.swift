import UIKit
//1) Создайте класс Трансформер. Задайте ему свойства: имя, статус (автобот или десептикон), текущий полученный урон, количество урона, который может нанести (задайте по умолчанию 0).
enum TransType: String{
    case autobot = "автобот"
    case desepticon = "десептикон"
    case empty = ""
}
class Transformer{
    var name = ""
    var type: TransType = .empty
    var currentDamage = 0
    var damageDo = 0
    func changeDamageDo() -> Int{
        damageDo + 1
    }
}
//2) Cоздайте ему метод стрельбы, который прибавляет к количеству урона 1.
//3) Создайте 8-10 разных трансформеров. Выведите их имена, статус и количество наносимого урона в консоль.У некоторых вызовите метод стрельбы.
let transformer1 = Transformer()
(transformer1.name, transformer1.type) = ("Риддикулус", .autobot)
let transformer2 = Transformer()
(transformer2.name, transformer2.type) = ("Гладиолус", .autobot)
let transformer3 = Transformer()
(transformer3.name, transformer3.type) = ("Пиздокрыл", .autobot)
for _ in 0..<5{
    transformer3.damageDo = transformer3.changeDamageDo()
}
let transformer4 = Transformer()
(transformer4.name, transformer4.type) = ("Комарун", .autobot)
let transformer5 = Transformer()
(transformer5.name, transformer5.type) = ("Радикулитус", .autobot)
transformer5.damageDo = transformer5.changeDamageDo()
let transformer6 = Transformer()
(transformer6.name, transformer6.type) = ("Попаданец", .desepticon)
let transformer7 = Transformer()
(transformer7.name, transformer7.type) = ("Сорванец", .desepticon)
transformer7.damageDo = transformer7.changeDamageDo()
transformer7.damageDo = transformer7.changeDamageDo()
let transformer8 = Transformer()
(transformer8.name, transformer8.type) = ("Химичекус", .desepticon)
let transformer9 = Transformer()
(transformer9.name, transformer9.type) = ("Гомодрил", .desepticon)
let transformer10 = Transformer()
(transformer10.name, transformer10.type) = ("Радикалус", .desepticon)
let allTransormers = [transformer1, transformer2, transformer3, transformer4, transformer5, transformer6, transformer7, transformer8, transformer9, transformer10]
for oneMachine in allTransormers{
    print("Имя: \(oneMachine.name), наносимый урон - \(oneMachine.damageDo), сторона конфликта - \(oneMachine.type.rawValue)")
}
//4) Создайте класс Кибертрон. В нём сформируйте коллекцию из ваших трансформеров.
class Cybertron{
    let allTransformers: [Transformer]
    init(allTransformers: [Transformer]) {
        self.allTransformers = allTransformers
    }
}
let cybertron = Cybertron(allTransformers: [transformer1, transformer2, transformer3, transformer4, transformer5, transformer6, transformer7, transformer8, transformer9, transformer10])
//5) Сделайте расширение класса Трансформер. Добавьте метод totalDestruction, который возводит количество наносимого урона в куб.
extension Transformer{
    func totalDestruction() -> Int{
        Int(pow(Double(damageDo), 3))
    }
}
transformer3.damageDo = transformer3.totalDestruction()
transformer3.damageDo
//6) Сделайте расширение класса Кибертрон. Отсортируйте в нём коллекцию трансформеров так, чтобы сначала шли все автоботы, а потом десептиконы.
extension Cybertron{
    func priority(forType: Transformer) -> Int{
        switch forType.type{
        case .desepticon: return 1
        case .autobot: return 0
        default: return 2
        }
    }
    var sortTransformers: [Transformer]{
        let sort = allTransformers.sorted{
            switch (priority(forType: $0), priority(forType: $1)){
            case let (a, b) where a < b: return true
            case let (a, b) where a > b: return false
            default: return $0.type != $1.type
            }
        }
        return sort
    }
    private func findSomeType(thisType: TransType, from: [Transformer]) -> [Transformer]{
        var emptyArray = [Transformer]()
        for oneMachine in from{
            if oneMachine.type == thisType{
                emptyArray.append(oneMachine)
            }
        }
        return emptyArray
    }
    var autobots: [Transformer]{
        findSomeType(thisType: .autobot, from: allTransformers)
    }
    var desepticons: [Transformer]{
        findSomeType(thisType: .desepticon, from: allTransformers)
    }
}

cybertron.autobots
cybertron.desepticons
cybertron.sortTransformers
//7) Вынесите в отдельные коллекции десептиконов и автоботов.
//8) Поставьте проверку в Кибертрон так, чтобы вы смогли отследить когда десептиконов стало больше. И если это произошло — убирайте из коллекции 1 элемент.
//9) С помощью сабскриптов поменяйте имя и статус любому трансформеру.
extension Transformer{
    subscript (name: String, type: TransType) -> Transformer{
        get{
            self.name = name
            self.type = type
            return self
        }
    }
}
transformer1.name
transformer1.type
transformer1["Раддайкулус", .desepticon]
transformer1.name
transformer1.type
