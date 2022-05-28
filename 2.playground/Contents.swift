import UIKit
import Foundation

var greeting = "Hello, playground"

/*
Instructions
Find the difference between the square of the sum and the sum of the squares of the first N natural numbers.

The square of the sum of the first ten natural numbers is (1 + 2 + ... + 10)² = 55² = 3025.

The sum of the squares of the first ten natural numbers is 1² + 2² + ... + 10² = 385.

Hence the difference between the square of the sum of the first ten natural numbers and the sum of the squares of the first ten natural numbers is 3025 - 385 = 2640.

You are not expected to discover an efficient solution to this yourself from first principles; research is allowed, indeed, encouraged. Finding the best algorithm for the problem is a key skill in software engineering.
*/


/*
 
 1. create array1 [1...N]?
 2. summ all elements in array1
 3. square all elements in array1
 4. square every element in array 1
 5. sum squared elements in p.4
 6. p3 - p5
 7. print p6
 
 */

//var number = 10
//
//let array1 = Array (1...number)
//let p2 = array1.reduce(0, +)
//let p3 = p2 * p2
//
//var p4: [Int] = []
//
//p4 = array1.reduce(into: []) {$0.append($1*$1)}
//
//var p5 = p4.reduce(0, +)
//
//var p6 = p3 - p5
//
//print (p6)

/*
 
 Instructions
Given a moment, determine the moment that would be after a gigasecond has passed.

A gigasecond is 10^9 (1,000,000,000) seconds

*/
//
//var moment = 100
//var gs = 1e-9

/*

 Given a year, report if it is a leap year.

 The tricky thing here is that a leap year in the Gregorian calendar occurs:

 on every year that is evenly divisible by 4
   except every year that is evenly divisible by 100
     unless the year is also evenly divisible by 400
 
 For example, 1997 is not a leap year, but 1996 is. 1900 is not a leap year, but 2000 is.
 
 
 */

//
//
//var givenYear = 2022
//
//if givenYear % 4 == 0 && givenYear % 100 != 0 || givenYear % 400 == 0 {
//    print ("leap year")
//} else {
//    print ("not leap year")
//}

//
//if givenYear % 100 != 0 {
//    print ("not even")
//}
//
//if givenYear % 400 == 0 {
//    print ("potentialy even")
//}





//Для отладки используйте XCode или online компиллятор
//Код ниже поможет считать проверочные значения, результат выведите в print

