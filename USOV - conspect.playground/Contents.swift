import UIKit

var test1 : Int = -32

print (test1)


var num1 : Int = 19
var num2 : Int = 4

var num3 = num1 % num2

var numberInt = 19
var numberDouble = 3.13

var multiplicationOne = numberInt * Int(numberDouble)

print (multiplicationOne)

var multiplicationTwo = numberDouble * Double(numberInt)

print (multiplicationTwo)

// мы не можем взять и перемножить Int на float. тут 2 опции - или мы перемножаем инт на инт или флоат на флоат. То есть в нашем случае мы либо перемножаем 19 * 3, либо 19.0 * 3.13


var count = 19
//count +=  5
//count *= 3
//count -= 3
count %= 2 // мы можем опередлить какое число перед нами - четное или нечетное.


import Foundation

var wallet: Double = 0 //no money in wallet at start

let income: Double = 0.1 //the ammount of money wallet receieve each iteration

wallet += income
print (wallet)

wallet += income
print (wallet)

wallet += income
print (wallet)


//вопрос - почему в денежных операциях рекомендуется использовать тип данных Decimal, если Float работает аналогично.
// Возможно просто попался частный случай. Надо понять что там по теории...


let char : Character = "T"
print(char)


let testString = "This is just a test strng"

print (testString)


var emptyString = "asdfasdf"
print (emptyString)


var anotherEmptyString = String ()
print (anotherEmptyString)


let longString =
    """
    Это многострочный
    строковый литерал
    """

print (longString)

// Тип строчных данных можно объявить по разному.

//Вариант-1 ниже

let notEmptyString = String ("Hello Jim!")
print (notEmptyString)

//И такой же результат, но по другому

let notEmptyString2 = "Hello Jim!"
print (notEmptyString)


//Перевод одного типа данных в другой. В этом примере переводим float (или double) в String

let doubleDataTest = 74.22
let convertDoubleDataTest = String (doubleDataTest)

print (convertDoubleDataTest)


//Пробуем же перевести String в Float. Но что-то не получается. Ругается.

let testStringData = "21---01"
let convertedTest = Float (testStringData)

//print (convertedTest)



//Эксперименты по объединению строк. Ниже пример интерполяции

let name = "Dragon"
let hello = "Hi, name is \(name)"

let lenght: Float = 10
let text = "My lenght is \(lenght) meters or \(lenght / 3) feet***"


print (hello)
print (text)

//Также объединнеие строк. Ниже пример конкатенации. Вес в кг мы сначала переводим в строку и только потом складываем со всем остальным массивом текста


let text1 = "my weight"
let text2 = " is "
var text3 = 78
let text4 = " kgs"

let summary = text1 + text2 + String(text3) + text4

print (summary)

// Сравнение строк

let firstString = "test1"
let secondString = "test2"
let thirdString = "test1"

firstString == secondString
secondString == thirdString
thirdString == firstString


// Логический тип данных. Bool

let isDragon = true
let isKnight : Bool = false

if isDragon == true {
    print ("that is a dragon")
} else {
    print ("that is not a dragon")
}


let someBool = true
!someBool
someBool


//Логические операторы

/*var firstBool = true, secondBool = true, thirdBool = false

//&& - оператор И. Дает true только если все условия ИСТИНА (true)

var one = firstBool && secondBool
var two = firstBool && thirdBool
var three = firstBool && secondBool && thirdBool

// || - оператор ИЛИ. Дает  true если хотя бы одно условие true. То есть при комбинации true + false ИЛИ выдает true

var firstBool1 = true, secondBool1 = false, thirdBool1 = false

let one1 = firstBool1 || secondBool1
let two1 = firstBool1 || thirdBool1
let three1 = secondBool1 || thirdBool1

*/

let firstBool = true, secondBool = false, thirdBool  = false
let resultBool = firstBool && secondBool || thirdBool
let resultAnotherBool = thirdBool || firstBool && firstBool

// swift определяет значения подвыражений последоватльно, то есть слева направо, однако можно изменить порядок если установить скобки



let fb = true, sb = false, tb = true

let resut = fb && (sb || tb)
let result2 = (sb || (fb && tb )) && tb

/* Короткое демо операторов сравнения.
 всего их 6
 
 ****************
 == эквивалентности, "равно" если по русски
 != неэквивалентности, "не равно" по русски
> больше
< меньше
>= больше или равно
<= меньше или равно
 ****************
 
 */

// Когда мы сравниваем String, очень похоже, что свифт сравнивает длину - количество символовl.

// -> тогда почему при ОДИНАКОВОМ количестве символов == дает false?

var t1 : String = "test"
var t2 : String = "rest"

t1 == t2

var a1 : String = "21"
var a2 : Int = 21


// Псевдонимы типов данных

// СРАЗУ ОБРАЩАЕМ ВНИМАНИЕ, ЧТО ПСЕВДОНИМЫ ПИШУТСЯ С БОЛЬШОЙ БУКВЫ, В ОТЛИЧИЕ ОТ ПЕРЕМЕННЫХ И КОНСТАНТ -- !!! Это вроде как не точно !!! надо проверить


// определяем псевдоним для типа UInt8
typealias AgeType = Int
/* создаем переменную типа UInt8,
используя псевдоним */
// Мы как бы ссылаемся на тип UInt8 посредством псевдонима. Таким образом, две записи ниже будут равнозначны, но первая - более читабельная
var myAge : AgeType = 29
var myAge1 : UInt8 = 29


// У одного типа, в нашем случае Стринг (пример ниже) может быть любое количество псевдонимов. Грубый пример - это как у человека может быть несколько кличек. Все псевдонимы ссылаются на один и тот же типа, также как и клички могут ссылаться на одного и того же человека.

// определяем псевдоним для типа String

typealias TextType = String
typealias WordType = String
typealias CharType = String

// теперь создаем константы каждого типа

let someText : TextType =  "This is Text"
let someWord : WordType = "Word"
let someChar : CharType = "B"
let someString : String = "This is just a String"

// Обьявленный псевдоним обладает теми же способностями, что и сам класс.

// Объявляем псевдоним

typealias AgeTypeNew = UInt8
let maxAge = AgeTypeNew.max

// Доп сведения о типах данных. Мы все таки можем узнать типа данных переменной или константы. Нжажимаем option + наводим мышь на название переменной или константы, также можем использовать функцию type (of:)

var intVar = 12.0
var new2 = (type(of: intVar))
print (new2)

print (type(of: intVar))

// Хэшируемые и сопоставимые типы данных.
/* Сопоставимые - это те данные, которые можно сравнить операторами сравнения, за исключем == или != (4 оператора). Если же можно использовать все 6 операторов, то данные Эквивалентные. Хэшируемые - данные, для которых может быть расчитан хэш - типа кода, который меняется от времени. Темный лес пока что....
 */


"string_1" == "string_1"

// Контейнерные типа данных

/*
 Это как корзина с фруктами. Корзина в данном случае - это контейнер.
 Этих контейнерных типов данных много видов.
 
 
 3 Глава 3. Кортежи (Tuple)
 3 Глава 4. Последовательности и коллекции
 3 Глава 5. Диапазоны (Range)
 3 Глава 6. Массивы (Array)
 3 Глава 7. Множества (Set)
 3 Глава 8. Словари (Dictionary)
 3 Глава 9. Строка — коллекция символов (String)
 
 */

//Глава 3. Кортежи (Tuple)

/* По всей видимости кортеж это что-то похожее на списки из Питона. Логика такая же - это перечень элментов, где у каждого есть свой номер. Мы можем работать как сразу с целым перечнем, так и с каждым отдельным элементом*/

let myProgramStatus = (200, "In Work", true)

let tuple1 = (200, "In Work", true)
let tuple2 = (true, "On Work", 200)

print (type(of: tuple1))
print (type(of: tuple2))

print ((type(of: tuple1)) == (type(of: tuple2)))


// мы можем объявлять тип данных кортежа

let floatStatus: (Float, String, Bool) = (200.2 , "In Work", true)

print (floatStatus)


// Также кортежи могут содеражать псевдонимы типов данных

typealias numberType = Int
// объявляем псевдоним для типа Int

let numbersTuple: (Int, Int, numberType, numberType) = (0, 1, 2, 3)

numbersTuple

let numberTuple1 = (0, 1, 2, 3)
print (numberTuple1)


// Мы можем взаимодействовать с элементами Кортежа.


/*
 
 А теперь пойдет жесть!
 Сначала мы создаем константный кортеж с именем myProgramStatusTest
 Далее, мы назначаем каждому элементу кортежа имя и после используем этим имена для ссылки на элемент кортежа!
 
 */

let myProgramStatusTest = (200, "In Work", true)

let (statusCode, statusText, statusConnect) = myProgramStatusTest

print ("Answer Code - \(statusCode)")
print ("Answer Text - \(statusText)")
print ("Connected to Server? - \(statusConnect)")


// А еще ссылаться можно с помощью номера элемента в кортеже. Тут все прямо как Питоне начинаются номера с нуля. Последний элемент в отличие от Питона не может быть вызван как -1. Мы работаем с тем же кортежем myProgramStatusTest.

print ("Answer Code - \(myProgramStatusTest.0)")
print ("Answer Text - \(myProgramStatusTest.1)")
print ("Connected to Server? -\(myProgramStatusTest.2)")


// Также для ссылки на элменты кортежа можно использовать имена. Имена давать не обязательно. Пример присваивания имен - ниже. При указании имен логика такая же как и с индексами

let statusTuple = (statusCode: 200, statusText: "in Work", statusConnect: true)

print ("Answer Code -\(statusTuple.statusCode)")
print ("Answer Text -\(statusTuple.statusText)")
print ("Connected to Server -\(statusTuple.statusConnect)")

//!!!!!!!!!!!!!!




// Кажется что самый унивесальный вариант ссылаться на элементы кортежа это ИНДЕКСЫ



// Также возможна еще такая конструкция для нескольких параметров


var (myNameTest, myAgeTest) = ("Dima", 34)

// В примере выше обьявляем две переменные с одновременной инициализацией им значений

print ("My name \(myNameTest) and I am \(myAgeTest) years old")

// Мы также можем игнорировать некторые элементы кортежа

var tupleNew = (200, "test", false)
var (ping, _, _) = tupleNew

print (ping)



// Опционалы


// Пример опциональных типов данных. Значение может быть, а может и не быть

var possibleString = "1945"
var convertedPossibleString = Int (possibleString)


var unpossibleString = "одна тысяча девятьсот сорок пять"
var convertedUnpossibleString = Int (unpossibleString)

type(of: convertedPossibleString)
type(of: convertedUnpossibleString)


let optionalChar: Character? = "a"  //сокращенное объявление опционала
let optionalChar1: Optional<Character> = "a" // Полная запись
let optionalChar3: Character?

// а выше мы создаем опционал = nil. Что-то мне подсказывает что это частый сценарий использования...

var someOptional: Bool? // и еще раз с Bool


// еще один способ создания опционала. В примере ниже создаем String?

var optionalVar = Optional ("StringValue")
optionalVar = nil // Сбрасываем значение опционала


// Опционалы могут быть в Тюплах (кортежах)
// Может быть целый опциональный кортеж

var tupleOptional: (code: Int, message: String)? = nil

// Также опционал может использоваться для отдельных элементов тюплов


var tupleOptional1: (Int?, Int) = (nil, 100)
tupleOptional1.0
tupleOptional1.1

// Извлечение опционалов


let optionalInt: Int? = 123
var mustHaveResult = optionalInt ?? 0
mustHaveResult



// ДИАПАЗОНЫ //range

let myRange = 1...100
let myRange1 = 1..<500

// можем задавать явно

let myRange2: Range<Int> = 1..<10

// по сути будет равно этому
let myRange3 = 1..<10
myRange2 == myRange3

// может быть и с другими типами данных

let myRange4 = "a"..."z" //string

// в качесте начального и конечного значений могут использоваться переменные

var varRange1 = 10
var varRange2 = 20

var myRange5 = varRange1...varRange2


// Диапазоны могут дружить с коллекциями

var myRange6 = 2...

var collectArray = [10, 20, 30, 40, 50]

// теперь с помощью диапазона можем выбрать элементы коллекции. например нужно выбрать с 3 включительно (индекс = 2) и до конца коллекции

var collectArray2 = (collectArray[myRange6]) // по сути ссылаемся на индекс в коллецкии. не до конца понимаю в каких сценариях это может использоваться ...


// Вот например таким образом можем из диапазона перенести данные в массив. Логика такая - создаем пустой массив и через .append добавляем в него. Похоже работает только с Int

var myRange3Array: [Int] = []

for i in myRange3 {
    myRange3Array.append(i)
}

myRange3Array



// При работе с диапазонами можно использовать методы. их много, нарпимер isEmpty

myRange4.isEmpty


// Используются при переборах в циклах, при работе с числовыми "промежутками", при создании массивов, при получении требуемых элементов массива (пример выше)


// МНОЖЕСТВА Set

// Неупорядоченный массив с уникальными (только) значениями. нет повторяющихся элементов. Спавнится в рандомном порядке при каждом исполнении кода

let mySet: Set<Int> = [1, 2, 3, 4, 5, 6]

// Также тип можно указать неявно

let mySet2: Set = [1, 2, 3, 4, 5, 6]

mySet == mySet2

// Ну и с arrayLiteral

let mySet3 = Set<Int>(arrayLiteral: 1, 2, 3, 4, 5, 6)
mySet3 == mySet2

// Ну и с arrayLiteral неявно

let mySet4 = Set(arrayLiteral: 1, 2, 3, 4, 5, 6)
mySet4 == mySet2

// Пустое множество делается так

let emptySet1 = Set<String>()

// Можно удалить все элементы из множества сделав его пустым

var testSet: Set = ["a", "b", "c", "d"]
testSet = []

// Добавить элементы можно через  .insert

var testSet1: Set = ["a", "b", "c", "d"]
testSet1.insert("adding")

testSet1.insert("a") // false так как "a" уже присутсвует в множестве testSet1

// Удалить элемент через  .remove или радикальное .removeAll

testSet1.remove("a")

// Проверяем есть ли элемент через .contains

testSet1.contains("test")
testSet1.contains("adding")

// Считаем количество элементов через .count

testSet1.count


// Строка - коллекция символов
// К строке можем применять свойста, например count

let testStr = "Hello!!!"

testStr.count



// Cтрока - коллекция. А какждый элемент - это Character. Но мы не можем просто ссылаться к символам как к array. Не все так просто. Каждому символу соответсвет свой код в Юникоде и ссылаться можем через них. Я пропущу эту тему. Она душная и не совсем понятно как она пригодится прямо сейчас.


// Операторы упрвления


// Ниже пример - очень крутой штуки. assert - утверждение? может останавливать выполнение программы. при определенных условиях. Эти самые условия мы можем задавать.
// пример с 3 перемеными. В зависимости от возраста Завра, он будет возвращать отдельную строку. Причем возвращать он будет как бы на "аппаратном" уровне - то есть выполнение следующих строк он будет блокировать, отлючая дальнейшую работу программы.
// Но использовать аккуратно. При остановке он крашит программу.



let strName = "Zavr "
let strYoung = "is young"
let strOld = "is old"


var dragonAge = 230

assert(dragonAge <= 235, strName + strOld ) // true
assert(dragonAge >= 225, strName + strYoung ) // false
print("Program finished")


// if - конструкции. if / else if / else

// Оператор ветвлерия switch. Пример с комментариями по оценке


let userMark = 4
var message = ""

switch userMark {
case 1:
    message = "very bad"
case 2:
    message = "bad"
case 3:
    message = "so so"
case 4:
    message = "good"
case 5:
    message = "perfect"
default:
    message = "Mark error, please check Mark"
}

message

// В операторе switch можно использовать диапазоны. Те же оценки. Тут логика такая - если оценка от одного значения до другого, то возращается один комментарий. Оценка в другом диапазоне - другой комментарий

let userMark2 = 5
var message2 = ""

switch userMark2 {
case 1..<3: message2 = "U have FAILED the test"
case 4...5: message = "U have PASSED the test"
default: message = "please CHECK the mark"
}

message2


// Switch удобно работает с тюплами. Например, у нас есть ренжи кодов ошибок и в соотвтествии с кодом нужно вывести тот или иной результат.


// напомним что такое тюпл, он же Кортеж. Составной тип данных.
//var tuple2 = (10, "ten")
//let person = (name: "Igor", age: 40, isMarried: true, weight: 79.0)
// Создавать тюплы можно и через явное объявление типов данных.

//var tuple3: (Int, String)
//
//tuple3 = (45, "Swift")

// Имя элемету тюпла можно давать, а можно и не давать, как на примере ниже. я НЕ дал имя первому элементу, но дал второму

let answer: (Int, message: String)
answer = (404, "Page not found")

answer

//
// далее идея использовать switch конструкцию чтобы по коду вывести определенный месседж

switch answer {
case (100..<400, _):
    print ("In the diapasone 100...400")
case (400..<500, _):
    print ("In the diapasone 400...500")
default:
    print ("wrong answer")
}


// Далее пример с драконами

//Вы — владелец трех вольеров для драконов. Каждый вольер предназначен для содержания драконов с определенными характеристиками:
//Вольер 1 — для зеленых драконов с массой менее двух тонн.
//Вольер 2 — для красных драконов с массой менее двух тонн.
//Вольер 3 — для зеленых и красных драконов с массой более двух тонн.
//При поступлении нового дракона нужно определить, в какой вольер его по- местить.
//

//let dragonChacteristics: (color: String, weight: Float)
//
//dragonChacteristics = ("red", 1)
//
//var crate1 = "crate 1"
//var crate2 = "crate 2"
//var crate3 = "crate 3"
//
//switch dragonChacteristics {
//case ("green", 0..<2):
//    print ("This dragon -> \(crate1)")
//case ("red", 0..<2):
//    print ("This dragon -> \(crate2)")
//case ("red", 2...), ("green", 2...):
//    print ("This dragon -> \(crate3)")
//
//default:
//    print ("The dragon can not be recieved")
//}


// Ключевое слово where в операторе switch

//// Усложняем задачу

//поместить дракона в вольер No 3 можно только при условии, что в нем находится менее пяти особей. Для хранения количества драконов будет использоваться дополнительная переменная, назовем ее dragonCount


let dragonChacteristics: (color: String, weight: Float)
dragonChacteristics = ("red", 2)


var dragonCount = 3


var crate1 = "crate 1"
var crate2 = "crate 2"
var crate3 = "crate 3"

switch dragonChacteristics {
case ("green", 0..<2):
    print ("This dragon -> \(crate1)")
case ("red", 0..<2):
    print ("This dragon -> \(crate2)")
case ("red", 2...) where dragonCount < 5,
    ("green", 2...) where dragonCount < 5:
    print ("This dragon -> \(crate3)")

default:
    print ("The dragon can not be recieved")
}


// Оператор break в конструкции switch-case

// Когда не хочется что-то писать в default
// Пример ниже. Надо вернуть какое число - положительное или отрицательное. Если введенное число 0, то код просто прекратит работу без ошибок


let someTestInt = -200
switch someTestInt {
case 1...:
    print ("The number is positive")
case ..<0:
    print ("The number is negative")
default:
    break
}



var zzzz = "while и repeat while"
print(zzzz.uppercased())

// Ключевое слово FALLTHROUGH

// из курса Яна --- >>
// А если же мы хотим распечатать и найденный кейс и default case, тогда перед default добавляем fallthrough - пример ниже.
// NB! Очень похоже на то, что fallthrough запускает только следующующую строчку после найденного кейса. Это неплохо бы проверить

// Логика использования такая - fallthrough позвляет вывести следущее значение за искомым. Например, если у нас weather1 = "rain" и после блока rain мы добавим fallthrough, то он выведет в нашем примере и rain и snow.
// Если же добавим еще fallthrough, то можем выводить и другие условия.

var weather1 = "rain"

switch weather1 {
case "rain": print ("take an umbrella")
    fallthrough
case "snow": print ("take warm clothes")
case "sunny": print ("take sun glasses")
default: print ("Anyway - just enjoy your day!")
}


// Еще один пример с уровнями готовности к чрезвычайной ситуации.
// Пусть есть 3 уровна - A B C
// A - turn off all electric devices
// B - close windows and doors
// C - stay calm and wait for help
// Алгоритм - A- базовый уровень, B - влкючает в себя условие А и условие B, С - влкючает в себя условия как A так и B



let currentLever = "A"

switch currentLever {
case "C":
    print ("stay calm and wait for help")
    fallthrough
case "B":
    print ("turn off all electric devices")
    fallthrough
case "A":
    print ("turn off all electric devices")
default:
    break
}



// Операторы повторения WHILE И REPEAT WHILE

// While -  отличный пример для понимания - молотком забиваем гвоздь. Забиваем до тех пор, пока гвоздь торчит. Как торчать перестал, то ударять по нему смысла больше нет. Очень часто используется в playground


// Например, задача - найти сумму всех чисел до 10


var firstNr = 1 // первое значение
var resultSum = 0 // подобные задания делаются через объявление переменной-буфера, где будет сохраняться промежуточное значение

while firstNr <= 10 {
    resultSum += firstNr
    firstNr += 1
}

print (resultSum)


// REPEAT WHILE

// while  проверяет условие до итерации, в то время как repeat while провряет после.

//Таким образом (кажется...) можно сделать одну итерацию даже если условие не соблюдается...Проверим! Да, это так


var firstNr2 = 1
var resultSum2 = 0

repeat{
    resultSum2 += firstNr2 // Каждую итерацию добавляем в resultSum2 по значению из firstNr2
    firstNr2 += 1 // Каждую итерацию увеличиваем значение firstNr2
} while firstNr2 <= 10
            
print (resultSum2)
            
// Использование оператора continue

//  continue предназначен для перехода к очередной итерации, игнорируя следующий за ним код

// Например, проверка всех четных чисел в интервале от 1 до 10


var x = 0
var sum = 0

while x <= 10 {
    x += 1
    if x % 2 == 1 {
        continue // Как только доходит до сюда и в при итерации в x получается нечетное число, начинается новая итерация. Дальнейший код игнорируется. Как только в следующей итерации появится четкое число, условие после if станет false и блок с contunie не запустится. Логично предположить что continue и if часто используются вместе
    }
    sum += x
}

sum




// Использование оператора break
// Останавливает цикл. весь код даллее по циклу игрорируется. Кажется что также как и continue часто используется в связке с if.
// Ниже - пример из Яна с обтатным отсчетом.



var countDown1 = 10

while countDown1 >= 0 {
    print (countDown1)
    if countDown1 == 4 {
        print ("Go Now!")
            break // В таком виде выведет Go Now! только после 4. Если брейк скрыть, то после GO NOW  будет продолжать идти отсчет до нуля
    }

    countDown1 -= 1
    
}


// Еще пример из Усова


let lastNum = 54
var currentNum = 1
var sumOfInts = 0

while currentNum <= lastNum {
    sumOfInts += currentNum
    if sumOfInts > 450 {
        print("Хранилище заполнено. Последнее обработанное число - \(currentNum)") // При достижении 450, выполняется код после if. Брейк блокирует дальнейший код
        break
}
    currentNum += 1
}


// Оператор повторения for ... i

// Код выполняется для каждого элемента в некой последовательности.


var test123 = "Test123"
var iterationCount = 0

for i in test123 {
    iterationCount += 1
    print (iterationCount, "someText", i)
}



// Итерироваться могут Array, Dictionary, Set, Range


// Array


var iterArray = [1, 2, 3, 4, 5]

for i in iterArray {
    print (i)
}


// Сложение всех элментов Array
// Тут логика такая же. Создаем пустую переменную и с каждой итерацией добавляем в нее числа

var sumOfElements = 0

for i in iterArray {
    sumOfElements += i
}


sumOfElements

// Dictionary с ростом людей. Делаем по нему итерации

var arrayDict = ["Dmitry": 1.75, "Kate" : 1.74, "James": 1.88, "Jessica" : 1.55]


for (name, height) in arrayDict {
    print ("\(name), \(height)")
}

for i in arrayDict {
    print (i)
}



// Set

var iterSet: Set = [1, 2, 3, 4, 5, 6]

for i in iterSet {
    print (i)
}


// Range

var iterRange = 1...10
var iterRangeSum = 0

for i in iterRange {
    iterRangeSum += i
}

iterRangeSum
