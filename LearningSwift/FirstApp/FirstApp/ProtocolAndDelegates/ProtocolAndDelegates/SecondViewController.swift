//
//  SecondViewController.swift
//  ProtocolAndDelegates
//
//  Created by Ruslan on 25.09.2020.
//

import UIKit

protocol MyCarDelegate: class {
    func changeCarName(carName: String)
}

class SecondViewController: UIViewController {
    
    @IBOutlet weak var addTextButton: UIButton!
    @IBOutlet weak var textField: UITextField!
    
    var carName: String?
    
    var delegate: MyCarDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.addTarget(self, action: #selector(textFieldDidChange(textField:)), for: .editingChanged)
    }
    
    @IBAction func addTextButtonPressed(_ sender: Any) {
        delegate?.changeCarName(carName: carName ?? "DefaultCarName")
        navigationController?.popViewController(animated: true)
    }
    
    @objc func textFieldDidChange(textField: UITextField){
        if (textField.tag == 100){
            carName = textField.text
        }
    }
}



