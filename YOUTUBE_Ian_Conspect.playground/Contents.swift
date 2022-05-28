import UIKit

var greeting = "Hello, playground"

print (greeting)


let myConst = "this is my first const"

var myVariable = 1408

print (myConst)

//
//var age = 19
//print(age)
//age = 20
//print(age)







var direction = "Left"
direction = "Right_1"

/*
 comment
 */

print (direction)

var number: Int = 10

print (number)


var a1 = 52.99
var b1 = 27

// Так можно складывать целые и дробные числа

var c1 = a1 + Double (b1)

print (c1)


// Типы данных. Их три - String(строка), Int (целое число), Float (6 знаков после запятой) / Double - дробное число. Действия можно делать только с одинаковым типом. Можем приводить.

var number2 = 10.99

print (number2)


var greetings = "this is just a greeting"

var greetings_2 = "test"

var sumOfGreetings = greetings + greetings_2

print (sumOfGreetings)


//Интерполяция строк - это когда в строку вставляешь переменную

print ("Hello \(sumOfGreetings)")


//Тип данных bool часто применяется в  if конструкциях

var isHappy = false

if isHappy {                // тут подразумевается что isHappy = true
    print ("Good")
}
else {
    print ("Bad")
}


//ОПЕРАТОРЫ


// Унарные(применяются к одной переменной) префиксные: -a, !b, постфиксные с!
// Бинарные (применяются к двум велчинам) 1 + 2 - по сути они инфиксные. то есть ставятся внутри
// Тернарные (применяются к трем величинам) a ? b : c (если а - Тру, то выполняем b, если ложь, то выполняем c)
// Операнды 1 + 2. 1 и 2 - Операнды

// Оператор присваивания =

let a = 12
var b = 5
b = a

// Арифметические операторы

//x + y
//x - y
//x * y
//x / y

// остаток от деления - %

let x = 12
let y = -5

x + y
x - y
x * y
x / y

let h = "hello, "
let g = "swift"

h + g

//Тут основная заморочка если одно из значений отрицательное. так, если х отрицательный, то значение будет -2, а если же y отрицательный, то просто 2

x % y

// Составные операторы присваивания. += или -=
// Может использоваться как счетчик, например очков в играх


var c = 1
c += 2

var count = 0

count += 1

// Операторы сравнения, == != > < >= < Используются в основом в условиях, например if / else

let t = 15
let p = 10

t == p
t != p


let name = "world"


// и пример if else

if name == "world" {
    print ("Hello World")
} else {
    print ("Something went wrong")
}

// Тернарные (применяются к трем величинам) a ? b : c (если а - Тру, то выполняем b, если ложь, то выполняем c)


/*
 
Фактически тернарный оператор заменяет такую вот if - конструкцию
 
 
 if a {
 b} else {
 c
 }

 
 */

let firstCard = 11
let secondCard = 10


// 1  вариант - с использованием if - конструкции

if firstCard == secondCard {
    print ("cards are the same")
} else {
    print ("cards are different")
}

// 2 вариант - с использованием тернарного оператора

firstCard == secondCard ?  print ("cards are the same") : print ("cards are different")

// Оператор закрытого (замкнутого) диапазона (a...b) , оператор полузакрытного (полузамкнутого) диапазона (a..<b)
// Удобно использовать при переборе значений, часто используются в циклах for in


// Логические операторы !a (not a), && (and) , || (or)

//!a - инвертирует (меняет на противоположное) булево значение

var areYouHappy = true

if areYouHappy {
    print ("Good for you!")
} else {
    print ("What can I do for you?")
}

// теперь инвертируем через !areYouHappy


if !areYouHappy {
    print ("Good for you!")
} else {
    print ("What can I do for you?")
}

// && (and) - дает тру только если оба операнда тру

var isTheWeatherGood = true

if areYouHappy && isTheWeatherGood == true {
    print ("go outside")
} else {
    print ("stay home")
}


// || (or) - дает Тру если хотя бы один оператор Тру

var areYouHappy_1 = true
var isTheWeatherGood_1 = false

if areYouHappy_1 || isTheWeatherGood_1 == true {
    print ("go outside")
} else {
    print ("stay home")
}


// УСЛОВИЯ

//if else - когда простое условие
//switch - когда условие более сложное


//Ниже пример конструкции if / else if /elif
//Если сумма = 21, то вы выиграли, если в промежутке от 18 до 20, то у тебя хорошие карты, если в другом промежутке, то обычные карты, если сумма больше 21, то выдает ошибку wtf


var firstCard_1 = 10
var secondCard_1 = 12

if firstCard_1 + secondCard_1 == 21 {
    print ("you WON!!!")
} else if firstCard_1 + secondCard_1 > 18 && firstCard_1 + secondCard_1 < 21 {
    print  ("you got GOOD cards")
} else if firstCard_1 + secondCard_1 < 21 {
    print ("you got REGULAR cards")
} else {
    print ("WTF?!")
}


// Еще один пример с возрастами. Cоздаем проверку на возраст и возвращаем три возможных ответа. Оба 18+, одному 18+ или оба 18-

var age1 = 9
var age2 = 18


if age1 >= 18 && age2 >= 18 {
    print ("both are 18+")
} else if age1 >= 18 || age2 >= 18 {
    print ("at lease one 18+")
} else {
    print ("both are 18-")
}


// switch конструкция - по сути это то же самое что и if else elif, но с сильно более читабельным кодом. Расмотрим пример с погодой и рекомендациями что одеть.


var weather = "rain"


switch weather {
case "rain": print ("take an umbrella")
case "snow": print ("take warm clothes")
case "sunny": print ("take sun glasses")
default: print ("no recomendations avaiable - just enjoy your day!")
}

// В примере выше xcode перебирает все возможные кейсы сверху вних, rain -> snow -> sunny и если ничего не находит, то влкючается default case.
// А если же мы хотим распечатать и найденный кейс и default case, тогда перед default добавляем fallthrough - пример ниже.
// NB! Очень похоже на то, что fallthrough запускает только следующующую строчку после найденного кейса. Это неплохо бы проверить


var weather1 = "sunny"

switch weather1 {
case "rain": print ("take an umbrella")
case "snow": print ("take warm clothes")
case "sunny": print ("take sun glasses")
    fallthrough
default: print ("Anyway - just enjoy your day!")
}


// switch конструкция для чисел. Вернемся к нашим let age1 = 9
//let age2 = 18


age1 = 61
age2 = 18


switch age1 {
case 0...13: print ("you are too young")
case 14...19: print ("you are teen")
case 20...60: print ("you are grown man")
case 80...: print ("you are an old man")
default: print ("wtf? how old are u?")
}


//ЦИКЛЫ

//используется для повторяющихся операций
// 3 вида -  for in (99% cases)
// while
//repeat while

//for in - для итерации по спикам элементов или диапазонов чисел



let count_1 = 1...10

for number in count_1 {
    print ("number is \(number)")    //  интерполяция строки
}


// что произошло выше? Мы сказали для каждого номера в нашем диапазоне count_1 от 1 до 10 выполни следующий код - распечатай фразу number is и вставь текущий  номер. По факту это как счетчик итерации в Питоне ... в данном случае  number - константа



// а вот таким образом можно задублировать Hello или любой другой текст нужное количество раз. Внимание - тут не используется буква для константы. Используем знак нижнего подчеркивания


for _ in  1...3 {
    print ("Hello")
}



// Таблица умножения на 3

for i in 0...9 {
    print ("\(i) х 3 = \(i * 3)")
}


// Цикл WHILE - выполняется до тех пор пока не станет false
// Лучше использовать когда количество предполагаемых итераций неизвестно.
// Бывает 2 типа - while и repeat-while


// Ниже пример отсчета от 20 до 1

number = 20

while number >= 1 {
    print (number)
    number -= 1
}
print ("start")

// Ниже пример счета от 1 до 20

number = 1

while number <= 20 {
    print (number)
    number += 1
}
print ("start")


// Цикл repeat-while
// одна итерация как происходит проверка условия и повторяется до тех пор пока условие не станет ложь  NB! Почему не проходит дополнительная итерация?

number = 10
 
repeat {
    print(number)
    number += 1
} while number <= 5
print ("finish")


// Остановка цикла с помощью break

var countDown1 = 10

while countDown1 >= 0 {
    print (countDown1)
    if countDown1 == 4 {
        print ("Go Now!")
        break
    }

    countDown1 -= 1
    
}

print ("GO")


// Составной тип данных Tuple, читается как Тьюпл. Иногда на русский язык переводится как Кортеж. Часто используются при возращении значений из функции

// состоит из простых типов данных.



let q = 10
let s = "Hello"

let person = (name: "Igor", age: 40, isMarried: true, weight: 79.0)

// как создавать tuple?

// Можно объединять переменые. В данном случае из переменных.

var tuple1 = (q, s)

//Можно прописывать элементы вручную

var tuple2 = (10, "ten")

//Таким образом мы можем узнать тип данных Тюпла. Да и вообще тип данных всего!


print (type (of: tuple2))

// Объявляем тип данных, который будем хранить, далее создаем сам Tuple

var tuple3: (Int, String)

tuple3 = (45, "Swift")

// Пимем имена нашим значениям

let tuple4 = (name: "Igor", age: 40, isMarried: true, weight: 79.0)

// Указываем составное имя

var (weight, height) = (75, 170)

//Часто tuple  надо разложить на элементы (decomposition)
//Разберем tuple4 по константам и переменным


// Разбираем по индексам
tuple4.0
tuple4.1
tuple4.2
tuple4.3

// Разбираем по элементам
tuple4.name
tuple4.age
tuple4.isMarried
tuple4.weight

//Через содание еще одного тюпла c Переменными.
//lastName, ageNew, weightNew - это уже готовые переменные


let info = ("Ivanov", 31, 80.7)
var (lastName, ageNew, weightNew) = info

lastName
ageNew
weightNew

//Иногда бывает, что нужен только один элемент Тюпла. Тогда используем знак нижнего подчеркивания

let info1 = ("Ivanov", 31, 80.7)
var (_, _, weightNew1) = info

weightNew1

//Значение одного тюпла можно присвоить значению другого. Ниже пример с точками

var point_1 = (x: 4, y: 3)
var point_2 = (x: 2, y: 6)

point_2 = point_1


//ОПЦИОНАЛЬНЫЕ ТИПЫ ДАННЫХ (опционалы)

// Передает отстутсвие строки как таковой. Пример с туалетной бумагой. nil - остутсвие значения.


// Чтобы обозначить что переменная обладает опциональным типом данных, нужно использовать ?

var age: Int? = 12

//age = nil //Значение не определено

//age + 1 - не складывается с 1 (Int) так как это разные типы данных

// Чтобы работать с опциональными типами их надо проверять на nil. Делаем с помощью конструкции  if / else.

if age == nil {
    print ("age is nill")
} else {
    age! + 1
}

// чтобы сделать что с Int нужно использовать метод unwrapping - разворачивание. Их несколько.
// Перед работой с переменными, в которых теоретически может содержаться nil, мы должны себя обезопасить - сделать "распаковку"

// Способ-1. Force unwrapping - Принудительное разворачивание. Пример - выше age! + 1
// Нужно использовать крайне аккуратно. Например в примере ниже код вызовет краш программы если в строке str будет хоть что то кроме буквы. Реальное приложение закроется.
// Лучше вообще не использовать

let str = "5"
let num = Int (str)!


// Способ - 2. Optional Binding. Опциональное связывание.
// Создаем новую константу и присваиваем ей значение опционала

var age_: Int? = 12

if var safeAge = age_ {
    safeAge += 1
} else {
    print ("age = nil")
    
}

// Создадим константу year of Birth. Допускаем что Int(yearOfBirth) может быть nil ( в строке могут иметься символы, а не только цифры)



let yearOfBirth = "1980"

Int(yearOfBirth)

if let safeYearOfBirth = Int(yearOfBirth) {
    safeYearOfBirth
}



// Способ - 3. Nil Colassing Operator. ?? Кажется самым удобным. Без всяких if else конструкций


var example: Int? = 12
print (example ?? "example = nil")



// Cпособ - 4. Неявно извлеченный Int (???)
// Иногда nil может быть только вначале программы
// Int! - например неявно извлеченный опционал. Тут первое значетие nill, а дальше все нормально

var number1: Int! = nil

number1 = 10

number1 = number1 + 10

// !!!!!Как вынести значение из опционала в новую переменную?


// МАССИВЫ


// Коллецкии = Массивы (Array), множества (Set), словари (Dictionary)
// Коллекции можно изменять если это var. Массив содержит данные только одного типа


//Массивы - упорядоченная коллекция значений


var array1 = Array<String>() // Полная форма записи
var array2 = [String]() // Предпочтительная форма записи
var array3:[Int] = [] //Такая форма записи также часто встречается
var array4 = [1, 2, 3, 4, 5] // Ручное создание массива Int
var array5 = ["One", "Two", "Three", "Four", "Five"] // Ручное создание массилва String
var array6 = [Int](repeating: 10, count: 6) // Массив одинаковых элементов в количестве Х штук



let apple = "apple"
let lemon = "lemon"
let orange = "orange"
let strawberry = "strawberry"

let fruits = [apple, lemon, orange, strawberry]
fruits

var shoppingList = ["eggs", "milk", "bread", "flour", "sweets"]

shoppingList.reverse ()

shoppingList.randomElement()


//let abc = "sex"
//
//if shoppingList.contains(abc) {
//    print ("good news, we have \(abc)")
//} else {
//    print ("sorry, we do not have \(abc) in the Array")
//}


shoppingList.min()



// К массивам можно применть свойства и методы, чтобы работать с ними

shoppingList.count
shoppingList.isEmpty
shoppingList.append("XXXXXX")


// Обращаться к элементам можно по индексу

shoppingList [0]
shoppingList [4]

// Также по индексу можно и менять элементы


shoppingList [1] =  "salt"


shoppingList

// Элементы также можно вставлять через .insert. Тут вставляем на перое место, индекс 0 - в самое начало списка

shoppingList.insert("OOOOOO", at: 0)

// Также по элементам списка можно проходить через for in. Например можно печать весь массив


for item in shoppingList {
    print (item)
}


// Массивы можно складывать

shoppingList += ["peper"]
shoppingList.count


var numbers3 = [1, 2, 3, 4, 5]

numbers3.max()
numbers3.shuffle ()




var numbers4 = [6, 7, 8]

var sum = numbers3 + numbers4


// МНОЖЕСТВА

// Хранит различ значения оодного типа в виде коллекции в неупорядочной форме. Это коллекция. Каждый эленмет - уникальный.


var set = Set<String>()


// Тип сам укажет, можно явно не прописывать, ну только если не ожидаем какой нибудь nil

var listOfSports: Set = ["badmntn", "bowling", "hockey"]


// могут применяться методы  свойства по аналогии .count / .insert / .sorted


// Можем создавать множества из массива Set from Array. Ниже - пример как удалять повторяющиеся элементы из массива (оставить только уникальные)


let  colors = Set (["red", "green", "blue"])
let  colors2 = Set (["red", "green", "blue", "blue", "red"])

var colors3 = colors.sorted()

colors3 [1]

colors == colors2


// С множествами можем проводить базовые операции

let oddNumbers: Set = [1, 3, 5, 7, 9]
let evenNumbers: Set = [2, 4, 6, 8, 0]
let primeNumbers: Set = [2, 3, 5, 7]

// union - объединяет оба множества

oddNumbers.union(evenNumbers)

// intersection - новое множетсво из общих значений двух множеств. В примере ниже возвращается пустое множество так как у четных и нечетрых чисел пересечений (одинаковых чисел) нет. Зато есть пересечения prime numbers

oddNumbers.intersection(evenNumbers)
oddNumbers.intersection(primeNumbers).sorted()

// substracting - множество - вычитает из первого множества элменты второго

oddNumbers.subtracting(primeNumbers)
evenNumbers.subtracting(primeNumbers)
evenNumbers.subtracting(evenNumbers) // способ обнулить множество

// symmetricDiffernce - новое множество, которое не повторояет значения из первого и второго

oddNumbers.symmetricDifference(primeNumbers)

//Множества используются когда нужна скороть и уникальные элменты

// СЛОВАРИ

// Это коллекция. Значения связаны с ключом. Нет порядка как и во множестве. Значения ищутся по ключу только.

var dictionary = [Int: String]() // пример создания пустого словаря

// Создаем тестовый словарь. Ключи словаря - имена людей String, значения - рост (Double)

var heights = ["Dmitry": 1.75, "Kate" : 1.74, "James": 1.88, "Jessica" : 1.55]

// добраться до определенного значения в словаре можно по ключу

heights ["Kate"]


// Еще поработаем со словарями. Оценки по предметам

var results = ["Math": 100, "Geo": 90, "Russian": 70,]

// У словарей, также как и других коллекций, есть методы. Пройдемся по ним

results.count // показывае количество "пар" (ключ + значение, а не общее количество элементом

results.isEmpty //пустой?

results["English"] = 95 // таким образом добавляем пару в словарь


results["Geo"] = 99 // таким образом можем изменить значение

results

// также изменять значения можем через метод updateValue

results.updateValue(80, forKey: "Math")

results.updateValue(80, forKey: "NewCategory") // Для несуществующих значений - возвращает nil

// Удалять значения можно так .removeValue

results.removeValue(forKey: "Math")

results

// Ну и конечно можем делать итерации по словарю через for in. В примере ниже subject и point - это тюпл

for (subject, point) in results {
    print ("\(subject): \(point)" )
}

// Также можем распечатать все ключи из словаря. Для этого также пробежимся по списку for in

for subject in results.keys {
    print ("Subject: \(subject)")
}


// С помощью .values и .keys можем получать доступ к ключам или элементам словаря. Далее их можно загонять в массив, в переменную ...

//results
//var www = results.values
//
//print (www)

// Также можем распечатать все значения из словаря. Для этого также пробежимся по списку for in


for point in results.values {
    print ("Point: \(point)")
}

// Так можем создавать массивы из словарей

var keys = Array(results.keys)
var valuesnew = Array(results.values)







//ФУНКЦИИ

// Помогают не повторять одни и те же учатки кода

func greetingsFunc (){
    print ("greeting message")
}

greetingsFunc() // так вызываем функцию

// функции могут получать данные. После функции есть скобки, в них указывается то, что функция будет получать

// Например, стоит задача получить квадрат какого-то числа.

// через переменную это будет так

var aForSq = 20
var sqrNonFunc = aForSq * aForSq
print (sqrNonFunc)

// а через функцию это будет так. При вызове функции нужно будет указать имя setNumber и число, которое собственно и будем возводить в квадрат. Таким образом можем лишь посчитать функцию, но сохранить резульат в переменную вроде как не получится

func square (setNumber: Int) {
    print (setNumber * setNumber)
}

square(setNumber: 30)


// Функции могут возвращать данные. -> после параметров. Используем  return для отправки значений из функции. В качестве примера используем прошлую функцию по возведению числа в квадрат. В таком случае результат функции можно записать в переменную.

// Когда нам нужно вернуть только одно выражение, слово  return можно опустить.



func square1 (setNumber: Int) -> Int {
    return setNumber * setNumber
}

square1(setNumber: 30)

var resultSq = square1(setNumber: 30)

resultSq



// и опускам слово return

func square2 (setNumber: Int) -> Int {
    setNumber * setNumber
}

square2(setNumber: 45)

var resultSq1 = square2(setNumber: 45)

resultSq

// Еще пример без return

func sumFunc () -> Int {
    5 + 5
}

// Вернуть 2 и более значения из одной функции. Например можем использовать тюплы


func getUser () -> [String] {
    ["Van", "Vanov"]
}

var userVar = getUser()
print (userVar[1])

func getUser1 () -> [String: String]{
    ["firstName": "Van", "secondName": "Ivanov"]
}


var userVar1 = getUser1 ()
print (userVar1["firstName"])


// Через использование тюпла

func getUser2 () -> (first: String, second: String){
    (first: "Van", second: "Ivanov")
}

var userVar2 = getUser2()

print (userVar2.first)

// Имена параментров. Внешние и внутренние имена параметров можно назначать по разному. Что бы это не значило.

// Фактически это сделано для визуального удобства. Ниже два примера идентичны! Но в первом примере понятнее что требуется от юзера. Это все можно делать комментами думаю...



func sayHello (to name: String) {
    print("Hello \(name)!")
}

sayHello(to: "Dmitry")


func sayHello2 (name: String) {
    print ("Hello \(name)!")
}

sayHello2 (name: "Dmitry")


// Пропуск имен параметров. Для того, чтобы в примере выше sayHello2 (name: "Dmitry") не указывать name: , мы можем пропустить указание имени еще на этапе создания функции. Выглядеть это будет следующим образом. Но рекомендуется давать параметрам внешние имена чтобы избегать путаницы


func greet (_ person: String) {
    print ("Hello, \(person)")
}

greet ("Zavr")


// Параметры по умолчанию. Например у функции print есть параметры (судя по документации их три). По умолчанию  print пропускает строку. А когда это не надо, то мы м можем активировать параметр terminator и enter (новую строку) можно заменить на пробел (" ") как в примере ниже.

print ("123", terminator: " ")
print ("123", terminator: " ")
print ("123")


// В примере ниже мы прописали часть параметров по умолчанию. Например по умолчанию мы даем "любезное" приветствие. nicely: Bool = true

func greet1 (_ person: String, nicely: Bool = true) {
    if nicely == true {
        print ("Hello, \(person)")
    } else {
        print ("Oh! \(person) you again!!")
    }
}


greet1("Maria")

greet1("Maria", nicely: false)


// Вариативные функции и вариативные параметры. Некоторые функции - вариативные, то есть они могут принимать много параментров, например функция print - вариативная

print ("123", "123", "123")

// Потестриуем на функции square, которая может возводить в квадрат много чисел сразу. Для этого используем конструкцию ... например Int ...

func square2 (numbers: Int...) {
    for number in numbers {
        print ("\(number) squared is \(number * number)")
    }
}

// Далее просто укзаываем список значений для работы функции через запятую


square2 (numbers: 1, 2, 3, 4, 10)

// Сквозные параметры. Все параметры внутри функции - константы. Для того, чтобы изменить их, можно поменить как  inout. Эту хуйню лучше избегать. Но нужно просто знать что такое бывает.

// Например нужно сразу удвоить число

func doubleIt (number: inout Int) {
    number *= 2
}

var myTestNumber = 10

doubleIt(number: &myTestNumber)




