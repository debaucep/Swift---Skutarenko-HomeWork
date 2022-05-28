import UIKit
//2) Написать по 5-10 enum разных типов + создать как можно больше своих enumerations. Главное, соблюдайте правила написания: понятность и заглавная буква в начале названия. Пропустите их через switch и распечатайте (см.видео).
//3) Создайте своё резюме с использованием enum: имя, фамилия, возраст, профессия, навыки, образование, хобби и т.д. - пункты на ваше усмотрение.
//Пропустите ваше резюме сначала через if else, затем через switch — для того, чтобы было понимание читаемости и красоты кода.
//Дайте свою оценку первому и второму варианту написания.

//4) Представьте, что вы попали на завод Apple. Вам принесли MacBook, Iphone, Ipad, Apple Watch и сказали: «Раскрась их в разные цвета. Джони Айву нужно вдохновение».
//Вы подвисли и начали раскрашивать. В итоге у вас получился красный MacBook, зеленый Ipad, розовый Iphone и буро-коричневый Apple Watch.
//Инструкция: для цветов задаём через enumeration. Наши девайсы располагаем в теле функции.
//Итог программы: «Айфон — розовый».
enum Technic: String{
    case MacBook = "МакБук"
    case Iphone = "Айфон"
    case AppleWatch = "Эпл ватч"
    case iPad = "Айпад"
}
enum Colors: String{
    case red = "красный"
    case green = "зелёный"
    case pink = "розовый"
    case brownBrown = "буро-коричневый"
}
let bag = [Technic.MacBook: Colors.red,
           Technic.iPad: Colors.green,
           Technic.Iphone: Colors.pink,
           Technic.AppleWatch: Colors.brownBrown]
for oneDevice in bag{
    print("\(oneDevice.key.rawValue) - \(oneDevice.value.rawValue)")
}
