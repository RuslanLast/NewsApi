//
//  CustomButton.swift
//  Test
//
//  Created by Ruslan on 18.09.2020.
//

import UIKit

protocol CustomButtonProtocol {
    func customise(title: String, font: UIFont, backgroundColor: UIColor, tintColor: UIColor)
}

class PayButton: UIButton, CustomButtonProtocol {
    func configureButton() {
        layer.cornerRadius = 10
    }
    
    func customise(title: String, font: UIFont, backgroundColor: UIColor, tintColor: UIColor) {
        setTitle(title, for: .normal)
        titleLabel?.font = font
        self.backgroundColor = backgroundColor
        titleLabel?.tintColor = tintColor
    }
}
