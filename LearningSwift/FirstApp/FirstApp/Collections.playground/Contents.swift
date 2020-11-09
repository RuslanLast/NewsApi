import UIKit

var str = "Hello, playground"

// frag Anton ueber Optional???



//Массивы
var weekDays: [String] = ["Monday", "Tuesday"]

    weekDays.append("Wendsday")
    weekDays.insert("Sunsay", at: 0)
    weekDays.insert("Cat", at: 2)
var removedElement = weekDays.remove(at: 2)

weekDays
removedElement

weekDays.count
weekDays.distance(from: 0, to: 3)

print(weekDays.distance(from: 0, to: 2))

weekDays.index(after: 0)

//словари

var dictionary: [String: String] = ["Monday": "Bad day", "Tuesday": "Einbisschen besser"]

dictionary["Monday"]
dictionary["Wendsday"] = "Kleines Montag"

dictionary["Monday"] = nil
dictionary




var cars: [Int] = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19]

for element in cars {
  print(element, terminator: "")
}

cars.append(10)
cars.remove(at: 1)
cars.count
cars.capacity
// frag Anton




