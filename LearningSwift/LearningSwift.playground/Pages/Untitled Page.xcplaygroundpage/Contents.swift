//: [Previous](@previous)

import Foundation
import UIKit
var z: Int = 7
print(z)

class Transport {
    var maxSpeed: Double
    var countWheels: Int
    
    func beep() {
        print("Signal")
    
    }
    init(ms: Double, cw: Int) {
    maxSpeed = ms
    countWheels = cw
    }
}

protocol MessagesSaverProtocol {
    var messages: [String] {get set}
    func messageSave(messageText: String)
    func printAllMessages()
}
class Radar: MessagesSaverProtocol {
    var messages: [String] = []
    
    func messageSave(messageText: String) {
        messages.append(messageText)
    }
    
    func printAllMessages() {
        for i in messages {
            print(i)
            
        }
    }
    func clearLastMessage() {
        messages.removeLast()
    }
     

}

class AirPlane: Transport {
    var countPeople: Int
    var delegate: MessagesSaverProtocol?
    
    func sendMessageToDestinationPoint(mText: String) {
        print("Sending message to destination point: \(mText)")
        delegate?.messageSave(messageText: mText)
        
    }
    func sendMessageToBase(mText: String) {
        print("Sending message to base: \(mText)")
        delegate?.messageSave(messageText: mText)
    }
    init(ms: Double, cw: Int, cp: Int, delegate: MessagesSaverProtocol?) {
    
        countPeople = cp
        self.delegate = delegate
        super.init(ms: ms, cw: cw)
    }
}

var radar = Radar()

var airPlane = AirPlane(ms: 1000, cw: 3, cp: 10, delegate: radar)
airPlane.sendMessageToBase(mText: "Hello, i'm okay!")

 //






