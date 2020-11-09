//
//  ViewController.swift
//  ProtocolAndDelegates
//
//  Created by Ruslan on 25.09.2020.
//

import UIKit

class FirstViewController: UIViewController {
    
    @IBOutlet weak var titelLable: UILabel!
    @IBOutlet weak var addPushButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeSomething()
    }
    
    func makeSomething() {
        
    }
    
    @IBAction func addNewText(_ sender: Any) {
        let secondViewController = UIStoryboard.init(name: "SecondViewController",
                                   bundle: Bundle.main).instantiateViewController(withIdentifier: "SecondViewController") as? SecondViewController
        
        secondViewController?.delegate = self
        
        self.navigationController?.pushViewController(secondViewController!, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "productsEmbedded"{
            let secondViewController = segue.destination as! SecondViewController
            secondViewController.carName = "MyCar"
        }
    }
}

extension FirstViewController: MyCarDelegate {
    func changeCarName(carName: String) {
        titelLable.text = carName
    }
}

