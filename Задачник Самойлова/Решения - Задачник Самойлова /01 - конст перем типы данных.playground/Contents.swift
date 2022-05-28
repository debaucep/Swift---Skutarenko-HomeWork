import UIKit
import Darwin
/*
 1) Напишите переменные и константы всех базовых типов данных: int, UInt, float, double, string. У чисел вывести их минимальные и максимальные значения.
 */
let intValue = 32
let uIntValue: UInt = 30
var floatValue: Float = 20.0
var doubleValue = 35.5
let stringValue = ""
Int.max
Int.min
UInt.max
UInt.min
UInt8.max
UInt8.min
UInt16.max
UInt16.min
UInt32.max
UInt32.min
floatValue = 9876543488
floatValue = -9876543488
doubleValue = 100000000_0000000000
doubleValue = -1000000000_000000000

//2) Создайте список товаров с различными характеристиками (количество, название). Используйте typealias.
 typealias ListOfProducts = (String, String, Int)
 let teethBrusher: ListOfProducts = ("Зубная щетка", "Xiaomi", 3)
 let recuperator: ListOfProducts = ("Рекуператор", "Vakio", 3)
 let smartCamera: ListOfProducts = ("Умная камера", "Xiaomi", 8)
 let notebooks: ListOfProducts = ("Ноутбуки", "Apple", 2)
 var arrayOfProducts = [teethBrusher, recuperator, smartCamera, notebooks]
 for product in arrayOfProducts {
     print("Название: \(product.0). Производитель: \(product.1). Количество: \(product.2)")
 }
//3) Напишите различные выражения с приведением типа.
let  number = 40
let floatNumber: Float = 12.5
let summ = Float(number) + floatNumber
let str = "Сумма равна "
let summStr = str + String(number)

// 4) Вычисления с операторами (умножение, деление, сложение, вычитание): создайте консольный калькулятор.
// Результат вычислений должен быть похож на: «3 + 2 = 5».
// 5) С помощью readLine() потренируйтесь вводить информацию в консоли и выводить её с
// помощью print().
// * Примечание: readLine() может не сработать в Playground.
// Чтобы выполнить задание 4.1., следуйте алгоритму:
// Открыть Xcode → Create a New Xcode Project → Платформа macOs → Command Line Tool.
//
func summ(a: Int, b: Int){
    print("\(a) + \(b) = \(a + b)")
}
summ(a: 3, b: 2)

func mult(a: Int, b: Int){
    print("\(a) * \(b) = \(a * b)")
}
func div(a: Int, b: Int){
    print("\(a) - \(b) = \(a - b)")
}
func diff(a: Int, b: Int){
    if b == 0{
        print("на ноль делить нельзя")
    } else {
        print("\(a) / \(b) = \(a / b)")
    }
}
mult(a: 10, b: 15)
div(a: 20, b: 3)
diff(a: 9, b: 3)
diff(a: 30, b: 0)
