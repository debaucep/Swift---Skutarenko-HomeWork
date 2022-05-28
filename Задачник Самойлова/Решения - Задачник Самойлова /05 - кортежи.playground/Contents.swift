import UIKit
//1) Создать кортеж с 3-5 значениями. Вывести их в консоль 3 способами.
let months = (january: "JAN", february: "FEB", november: "NOV")
print(months)
print(months.january, months.february, months.november)
print(months.0, months.1, months.2)
//2) Давайте представим, что мы сотрудник ГАИ и у нас есть какое-то количество нарушителей. Задача. Создать кортеж с тремя параметрами:
// первый - превышение скорости: количество пойманных;
// второй - вождение нетрезвым: количество пойманных;
// третий - бесправники: количество пойманных.
//Распечатайте наших бедокуров в консоль через print().
let violators = (speed: 36, alco: 4, rights: 3)
print("""
Количество нарушений:
превышение скорости - \(violators.speed)
алкогольное опьянение - \(violators.alco)
езда без прав - \(violators.rights)
""")
//3) Выведите каждый параметр в консоль. Тремя способами.
//4) Создайте второй кортеж — нашего напарника. Значения задайте другие.
let anotherViolators = (speed: 25, alco: 3, rights: 2)
print("""
Количество нарушений у товарища:
превышение скорости - \(anotherViolators.0)
алкогольное опьянение - \(anotherViolators.1)
езда без прав - \(anotherViolators.2)
""")
//5) Пусть напарники соревнуются: создайте третий кортеж, который содержит в себе разницу между первым и вторым.
var diff = anotherViolators
diff = (violators.speed - anotherViolators.speed,
        violators.alco - anotherViolators.alco,
        violators.rights - anotherViolators.rights)
//Вывести в консоль тремя способами.
print("""
Разница между первым и вторым:
превышение скорости: \(diff.0)
алкогольное опьянение: \(diff.1)
езда без прав: \(diff.2)
""")
//ПРОДВИНУТЫЙ УРОВЕНЬ.
//1) Создать 10 кортежей-разработчиков, каждый с 4 параметрами: имя, возраст, опыт, специальность. Пока не задавайте никаких данных.
var developer1 = (name: "", age: 0, exp: 0, speciality: "")
var developer2 = (name: "", age: 0, exp: 0, speciality: "")
var developer3 = (name: "", age: 0, exp: 0, speciality: "")
var developer4 = (name: "", age: 0, exp: 0, speciality: "")
var developer5 = (name: "", age: 0, exp: 0, speciality: "")
var developer6 = (name: "", age: 0, exp: 0, speciality: "")
var developer7 = (name: "", age: 0, exp: 0, speciality: "")
var developer8 = (name: "", age: 0, exp: 0, speciality: "")
var developer9 = (name: "", age: 0, exp: 0, speciality: "")
var developer10 = (name: "", age: 0, exp: 0, speciality: "")
//2) После создания всем задайте имя, 3 из них — задайте возраст (любые значения выше 23),4 — опыт и только 2 — специальность.
developer1.name = "Василиса"
developer2.name = "Анастасия"
developer3.name = "Забава"
developer4.name = "Злата"
developer5.name = "Мария"
developer6.name = "Татьяна"
developer7.name = "Елизавета"
developer8.name = "Владимир"
developer9.name = "Зинаида"
developer10.name = "Антонина"
developer1.age = 25
developer8.age = 33
developer4.age = 40
developer8.exp = 3
developer3.exp = 2
developer10.exp = 5
developer5.exp = 1
developer8.speciality = "ios"
developer4.speciality = "android"
//3) Используя проверки if/else, выводите сообщения по логике: если возраст больше 23, есть опыт и специальность это ios — в консоль выводите имя и сообщение- принят на работу.
let devArray = [developer1, developer2, developer3, developer4, developer5, developer6, developer7, developer8, developer9, developer10]
var anotherDevArray = devArray
anotherDevArray = []
for oneDeveloper in devArray{
    if oneDeveloper.age > 23 && oneDeveloper.exp > 0 && oneDeveloper.speciality == "ios"{
        print("\(oneDeveloper.name) принят на работу")
    }
    if oneDeveloper.age < 23{
        anotherDevArray.append(oneDeveloper)
    }
}
//4) Тех, кто младше 23, добавьте в массив и отсортируйте. Найдите в этом массиве максимальное значение и удалите его.
//5) Создайте массив и в проверку из пункта 3 добавьте условие: если специальность не ios — добавить в созданный массив.
anotherDevArray
