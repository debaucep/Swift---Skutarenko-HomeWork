import UIKit

var greeting = "Hello, playground"


// basic types

var a: Int = 10
var b: Float = 11.1
var c: Double = 12.2

var sumABCINt = a + Int (b) + Int (c)
var sumABCFloat = Float (a) + b + Float (c)
var sumABCDouble = Double (a) + Double (b) + c


Double (sumABCINt) <  sumABCDouble

// tuples




/*
 
 Домашнее задание:

 1. Создать тюпл с тремя параметрами:

 - максимальное количество отжиманий maxpressup
 - максимальное количество подтягиваний maxpullup
 - максимальное количество приседаний maxsitdowns

 Заполните его своими достижениями :)

 Распечатайте его через println()

 2. Также сделайте три отдельных вывода в консоль для каждого параметра

 При том одни значения доставайте по индексу, а другие по параметру

 3. Создайте такой же тюпл для другого человека (супруги или друга)

 с такими же параметрами, но с другими значениями

 Используйте промежуточную переменную чтобы поменять соответствующие значения

 первого тюпла на значения второго

 4. Создайте третий тюпл с теми же параметрами, но значения это разница

 между соответствующими значениями первого и второго тюплов

 Результат выведите в консоль
 
 */


////1
//var mySportRecords = (maxpressup: 100, maxpullup: 30, maxsitdowns: 100)
//
//mySportRecords.maxpressup
//mySportRecords.maxpullup
//mySportRecords.maxsitdowns
//
//print ("My resutls are: Max nr of maxpressup: \(mySportRecords.maxpressup), max nr of pullups: \(mySportRecords.maxpullup) , max nr of sitdowns: \(mySportRecords.maxsitdowns) ")
//
////2
//
//print ("Nr of pressup \(mySportRecords.maxpressup)")
//print ("Nr of pullups \(mySportRecords.1)")
//print ("Nr of sitdowns \(mySportRecords.maxsitdowns)")
//
//
//
////3
//
//var zavrSportRecords = (maxpressup: 20, maxpullup: 15, maxsitdowns: 50)
//
//
//zavrSportRecords.maxpressup
//zavrSportRecords.maxpullup
//zavrSportRecords.maxsitdowns
//
////4
// 
//var pressupsdiff = (mySportRecords.maxpressup - zavrSportRecords.maxpressup )
//var pullupsdiff = (mySportRecords.maxpullup - zavrSportRecords.maxpullup)
//var sitdownsdiff = (mySportRecords.maxsitdowns - zavrSportRecords.maxsitdowns)
//
//var tuplediff = (pressups: pressupsdiff, pullups: pullupsdiff, sitdowns: sitdownsdiff)
//
//print (tuplediff)
//
//
