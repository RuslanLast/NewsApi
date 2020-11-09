//
//  SecondViewController.swift
//  TableViewExample
//
//  Created by Ruslan on 19.09.2020.
//

import UIKit

class SecondViewController: UIViewController {
    
    @IBOutlet weak var mainLabel: UILabel!
    
    var text: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        mainLabel.text = text
    }

}
