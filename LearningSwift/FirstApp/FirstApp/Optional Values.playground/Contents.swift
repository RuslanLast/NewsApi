import UIKit

class MyCar {
    
    var speed: Int?
    var color: UIColor?
    
    func setMyCarProperties(speed: Int?, color: UIColor?) {
        self.speed = speed
        
        self.color = color!
        

        
        print("My car speed is \(self.speed)")
        print("My car color is \(self.color)")
    }
    
}

let myCar = MyCar()

myCar.setMyCarProperties(speed: nil, color: nil)

struct WeatherJSON: Codable {
    let city: String
    var rainPersent: Int?
    
    mutating func makeSomething() {
        let persent: Int?
        
        rainPersent = persent
        
        // Print persent value on screen, if optional hide view
        
    }
}
