
import UIKit



func oneParam(param: Int) {
    var param = param
    param += 1
}
oneParam(param: 10)
//
//
//
//MARK: - Optional Опционалы


var fuel: Int?
fuel = 20
//fuel = nil

print("\(fuel!) liters left")

if let availabelFuel = fuel {

    print("\(availabelFuel) liters left")
} else {
    print("no fuel data availabel")
}


func checkFuel() {
    guard let availabelFuel = fuel else {
        print("no fuel data availabel")
        return
    }
    print("\(availabelFuel) liters left")
}

checkFuel()


// MARK: - CLASSES Классы

class Human {

    var name: String
    var age: Int?
    var hair: Bool

    func description() -> String {

        if let humanAge = age {
        return "Hello my name is \(name) and I'm \(humanAge) years old!"
        } else {
            return "Hello my name is \(name)"
        }
    }
    init() {
        name = "Ivan"
        hair = true
    }
    
    init(name: String, age: Int?, hair: Bool) {
        self.name = name
        self.age = age
        self.hair = hair
    }
}

let humanOne = Human()
humanOne.name = "Natasha"
humanOne.name
humanOne.description()

let humanTwo = Human()
humanTwo.hair = false
humanTwo.name = "Jack"
humanTwo


var array = [Human]()

array.append(humanOne)
array.append(humanTwo)




//MARK: - INITIALIZATION

let human = Human()
human.age
human.name

let human1 = Human(name: "Jason", age: 40, hair: true)

//MARK: - Inheritance Наследования


class HumanClass {
    
    // Properties
    var name: String
    
    // mathod
    func tellAboutMe() -> String {
        return "Hello! My name is \(name)!"
    }
    // initializer
        init(name: String) {
            self.name = name
    }
}

class Child: HumanClass {
    var toy = "Horse"
    
    override func tellAboutMe() -> String {
        let originalText = super.tellAboutMe()
        return originalText + " And i have a toy \(self.toy)"
    }
    init(toy: String, name: String) {
        self.toy = toy
        super.init(name: name)
        
    }
    
    override init(name: String) {
        self.toy = "Hummer"
        super.init(name: name)
    }
}
let child = Child(name: "Klava")
child.tellAboutMe()

let child1 = Child(toy: "Dinosaur", name: "Max")
child1.tellAboutMe()

// MARK: - Computed properties Вычисляемые свойства

class Rectangular {
    let height: Int
    let width: Int
    let depth: Int
    
    var volume: Int {
        return height * width * depth
    }
    
    
    
    init(height: Int, width: Int, depth: Int) {
        self.height = height
        self.width = width
        self.depth = depth
    }
}

let rect = Rectangular(height: 10, width: 12, depth: 13)
rect.volume


class Person {
    
    var name: String
    var secondName: String
    
    
// MARK: - Getter and Setter
    
    
    var fullName: String {
        get {
        return name + " " + secondName
        }
        
        set(anotherNewValue) {
            let array = anotherNewValue.components(separatedBy: " ")
            name = array[0]
            secondName = array[1]
        }
    }
    
    init(name: String, secondName: String) {
        self.name = name
        self.secondName = secondName
    }
}

let person = Person(name: "Ruslan", secondName: "Lastochkin")
person.fullName


person.name
person.secondName
person.fullName = "Zinaida Petrova"
person.name
person.secondName


//MARK:- Class properties Свойства классов

class Car {
    
    //properties
    let products: Int
    let people: Int
    let pets: Int
    class var selfWeight: Int { return 1500 }
    class var maxWeight: Int { return 2000 }
    
    //computed property
    var totalWeight: Int {
        return products + people + pets + Car.selfWeight
    }
    
    //initializaer
    
    init(products: Int, people: Int, pets: Int) {
        self.products = products
        self.people = people
        self.pets = pets
    }
}

let car = Car(products: 30, people: 300, pets: 50)
let maxWeight = Car.maxWeight
let carWeight = Car.selfWeight
let totalWeight = car.totalWeight

if carWeight > maxWeight {
    print("Your car is overloaded: \(totalWeight - maxWeight)")
} else {
    print("You can drive!")
}

//MARK: - Наблюдатели

class SecretLabEmploee {

    var accessLevel = 0 {
        willSet(newValue) {
            print("new boss is about to come")
            print("new access level is \(newValue)")
        }
        didSet {
            accessToDB = accessLevel > 0 ? true : false
            print("new boss just come")
            print("last time i had access \(oldValue)")
        }

    }
    var accessToDB = false
}

let emploee = SecretLabEmploee()
emploee.accessLevel
emploee.accessToDB

emploee.accessLevel = 1
emploee.accessToDB



//MARK: - Enum

enum Movement: Int {
    
    case forward
    case backward
    case left
    case right
}

let movementDirection  = Movement.backward.rawValue

enum Device {
    
    case iPad(color: String), iPhone
    
    var year: Int {
        switch self {
        case .iPhone: return 2007
        case .iPad(let color) where color == "Black": return 2020
        case .iPad: return 2010
        }
    }
}

let yearOfProduction = Device.iPad(color: "Black").year






var array1 = [162079, 908468, 79617, 213692,
591614, 164526, 710463, 116958, 465099,
381195, 548523, 906071, 679514, 718311,
262596, 646941, 930098, 400717, 44064,
386289, 183570, 440134, 180879, 471175,
651399, 329186, 28559, 937785]

for i in 0..<array1.count {
      if i % 2 == 0 {
           print(array1[i] + array1[i+1])
      }
}


let wallet = [100, 5, 1, 5, 5, 20, 50, 100, 1, 1]

var sum = 0
for value in wallet {
    sum += value
}

sum










