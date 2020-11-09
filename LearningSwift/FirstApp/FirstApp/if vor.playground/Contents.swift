import UIKit

var str = "Hello, playground"


// ax2+bx+c=0
// d = b2+4ac

var a = 10
var b = 5
var c = 1

var d = b*b + 4*a*c

if d > 0 {
    print("У уравнения 2 корня")
} else if d == 0 {
    print("У уравнения 1 корня")
} else if d < 0 {
    print("Иррациональные корни")
}


var names: [String] = ["Петя", "Вася", "Оля", "Маша"]
for name in names {
    print("Hello, \(name)")
}
for index in 0...names.count-1 {
    
    print("Hello, \(names[index])")
    if names[index] == "Петя" {
        print("Are you Peta")
        print("\(names)")
    }
    
    
}








