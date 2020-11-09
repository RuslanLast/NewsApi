//: [Previous](@previous)

import Foundation
//var aComputer: Int = 0
//var bUser: Int = 10
//
//
//
//for item in 0...10 where item % 2 == 1{
//    print(item)
//
//}

var array: [Int] = [1,2]
var arrayString: [String] = ["a","b","c","d"]

print(array)

var count = array.count
array.count

var index = 2
if index >= count {
    print("Index out of rage")
} else {
    array[index]
}

arrayString.count


var arrayMoney: [Double] = []

arrayMoney.append(10.50)
arrayMoney.append(2.5)
arrayMoney.append(4.5)
arrayMoney.remove(at: 0)
arrayMoney


var sum: Double = 0
for item in arrayMoney {
    sum = sum + item
}
print("Сумма трат за сегодня: \(sum)")

var homeString: String = ""

for item in arrayString {
    homeString = homeString + item
}
print("задание готово: \(homeString)")

homeString



var g: Int = 45
