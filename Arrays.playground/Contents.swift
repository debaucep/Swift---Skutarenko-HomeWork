import UIKit

var greeting = "Hello, playground"


//Массивы - упорядоченная коллекция значений


var array1 = Array<String>() // Полная форма записи
var array2 = [String]() // Предпочтительная форма записи
var array3:[Int] = [] //Такая форма записи также часто встречается
var array4 = [1, 2, 3, 4, 5] // Ручное создание массива Int
var array5 = ["One", "Two", "Three", "Four", "Five"] // Ручное создание массилва String
var array6 = [Int](repeating: 10, count: 6) // Массив одинаковых элементов в количестве Х штук

var array7: [Int] = Array(1...10) // Создаем массив от 1 до 10. В качестве 1 и 10 можем использовать и другие переменные

var array8 = Array(arrayLiteral: "this", "is", "new", "array")


// Сложить все элменты массива

let arrrrr = Array (1...10)
let p2 = arrrrr.reduce(0, +)
print (p2)

// Возвести все элементы массива в квадрат

var p4: [Int] = []
p4 = (arrrrr.reduce(into: [Int]()) { result, value in
    result.append(value * value )


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


//
//var numbers4 = [6, 7, 8]
//
//var sum = numbers3 + numbers4
//
//
}
)


let a1 = 1
let a2 = 2
let a3 = 3

var arrayTest:[Int] = [2, 1, 3, 5, 6, 9, 12]

var arrayNew = Array(arrayTest.sorted().reversed())

arrayNew.randomElement()


