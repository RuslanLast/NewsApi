//
//  ViewController.swift
//  Test
//
//  Created by Ruslan on 18.09.2020.
//

import UIKit

class FirstViewController: UIViewController {

    @IBOutlet weak var firstButton: PayButton!
    @IBOutlet weak var secondButton: CancelButton!
    @IBOutlet weak var titleLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureButtons()
    }

    func configureButtons() {
        firstButton.customise(title: "Оплатить", font: UIFont.boldSystemFont(ofSize: 10), backgroundColor: UIColor.black, tintColor: .red)
        
        firstButton.configureButton()
        
        secondButton.customise(title: "Отмена",
                               font: .systemFont(ofSize: 13),
                               backgroundColor: .red,
                               tintColor: .white)
        
        secondButton.configureButton()
    }
    
    
    
    @IBAction func firstButtonTapped(_ sender: UIButton) {
        titleLabel.text = "Операция совершена"
    }
    
    @IBAction func secondButtonTapped(_ sender: UIButton) {
        titleLabel.text = "Операция отменена"
    }
    
}



