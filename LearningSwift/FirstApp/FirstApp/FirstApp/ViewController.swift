//
//  ViewController.swift
//  FirstApp
//
//  Created by Ruslan on 15.09.2020.
//  Copyright © 2020 Ruslan Lastochkin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var dataArray: [Double] = []
    
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var lableList: UILabel!
    @IBOutlet weak var lableTotal: UILabel!
    
    var text: String {
        
        if textField.text == "" {
            return "Test value"
        } else {
            return textField.text!
        }
        
    }
    
    var text2: String = "Test"
    var text3: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func pushAddButtom(_ sender: Any) {
        textField.text = text
        
        if 10 > 0 {
            print(10)
        } else {
            print(0)
        }
        
    }
}





var g: Int = 34
