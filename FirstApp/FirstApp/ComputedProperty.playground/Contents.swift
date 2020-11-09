import UIKit

var someProperty: String {
    get {
        let something = "Test"
        return something + "Test"
    }
    
    set {
        let value = newValue + "Test1"
        //        print(value)
    }
}

//print(someProperty)

someProperty = "Hello world"

//print(someProperty)


// MARK: - DidSet
class Tester {
    
    var tableView: UITableView!
    
    var anotherValue: [String] = [] {
        didSet {
            tableView.reloadData()
        }
    }
    
    func appendRow() {
        anotherValue.append("Test1")
    }
}

