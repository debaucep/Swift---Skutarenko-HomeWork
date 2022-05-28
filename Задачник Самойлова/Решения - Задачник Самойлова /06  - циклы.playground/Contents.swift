import UIKit
//1) Создайте массив "дни в месяцах":
//Распечатайте элементы, содержащие количество дней в соответствующем месяце, используя цикл for и этот массив.
let months = ["январь", "февраль", "март", "апрель", "май", "июнь", "июль", "август", "сентябрь", "октябрь", "ноябрь", "декабрь"]
for oneMonth in months{
    switch oneMonth{
    case "февраль": print("\(oneMonth) - 28 дней")
    case "апрель", "июнь", "сентябрб", "ноябрь": print("\(oneMonth) - 30 дней")
    default: print("\(oneMonth) - 31 день")
    }
}
//2) Создать в if и отдельно в switch программу которая будет смотреть на возраст человека и говорить куда ему идти в школу, в садик, в универ, на работу или на пенсию и тд.
let age = 20
if age > 0 && age <= 6{
    print("Иди в садик")
} else if age > 6 && age <= 17{
    print("Иди в школу")
} else if age > 17 && age <= 22{
    print("Иди в универ")
} else if age > 22 && age < 65{
    print("Иди на работу")
} else if age > 65{
    print("Иди на пенсию")
} else {
    print("Неверный возраст")
}

switch age{
case 0...6: print("Иди в садик")
case 7...17: print("Иди в школу")
case 18...22: print("Иди в универ")
case 23...65: print("Иди на работу")
case 65...116: print("Иди на пенсию")
default: print("Неверный возраст")
}
//3) В switch и отдельно в if создать систему оценивания школьников по 12 бальной системе и высказывать через print мнение.
let mark = 11
switch mark{
case 1...2: print("Отвратительно")
case 3...4: print("Неудовлетворительно")
case 5...6: print("Удовлетворительно")
case 7...9: print("Хорошо")
case 10...12: print("Отлично")
default: print("Неверная оценка")
}

if mark == 1 || mark == 2{
    print("Отвратительно")
} else if mark == 3 || mark == 4{
    print("Неудовлетворительно")
} else if mark == 5 || mark == 6{
    print("Удовлетворительно")
} else if mark == 7 || mark == 9{
    print("Хорошо")
} else if mark == 10 || mark == 11 || mark == 12{
    print("Отлично")
} else{
    print("Неверная оценка")
}
//4) Cоздать создайте цикл в цикле. В первом цикле интервал 200 раз во втором как доедем до 15 выйти со всех циклов.
for _ in 0..<200{
    for _ in 0..<15{
    }
    break
}
//ПРОДВИНУТЫЙ УРОВЕНЬ.
//1) Сыграем в шахматы. У вас есть некоторое количество фигур на доске. Они расположены на определённых клетках. Ваша задача: делать ходы и сообщать об этом в консоль.
//2) Если ход пересекается с координатой фигуры — сообщать об этом в консоль.
//3) Если ход попадает на определённую координату — сообщать в консоль к примеру: «Шах» или «Мат».
//Примечание. В качестве координат можно использовать кортежи. Не забываем пользоваться switch и циклами.
//4) Если ход попадает на определённую координату — сделайте фигуру равной nil.
let check = ("E", 3)
let mate = ("A", 8)
let figureToNill = ("B", 1)
var knight: (String, Int)? = ("C", 2), king: (String, Int)? = ("D", 6), queen: (String, Int)? = ("E", 8), pawn: (String, Int)? = ("H", 4)
func move (figure: inout (String, Int)?, to cell: (String, Int)){
    switch cell{
    case let i where i == check: print("Шах!")
    case let i where i == mate: print("Мат!")
    case let i where i == figureToNill: figure = nil
    default: figure = cell
    }
}
move(figure: &knight, to: ("B", 4))
knight
move(figure: &king, to: ("B", 4))
move(figure: &king, to: ("E", 3))
move(figure: &king, to: ("A", 8))
move(figure: &king, to: ("B", 1))
king
