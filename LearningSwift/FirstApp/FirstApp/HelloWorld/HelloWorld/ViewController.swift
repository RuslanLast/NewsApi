//
//  ViewController.swift
//  HelloWorld
//
//  Created by Ruslan on 15.09.2020.
//  Copyright © 2020 Ruslan Lastochkin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lable: UILabel!
    
    @IBAction func pushMeAction(_ sender: Any) {
        lable.text = "Hello World"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

