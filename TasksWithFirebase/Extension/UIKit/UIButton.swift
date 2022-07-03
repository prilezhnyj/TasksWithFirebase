//
//  UIButton.swift
//  TasksWithFirebase
//
//  Created by Максим Боталов on 03.07.2022.
//

import UIKit

extension UIButton {
    convenience init(titleText: String, titleFont: UIFont, titleColor: UIColor, backgroundColor: UIColor, isBorder: Bool, cornerRadius: CGFloat) {
        self.init(type: .system)
        self.setTitle(titleText, for: .normal)
        self.setTitleColor(titleColor, for: .normal)
        self.titleLabel?.font = titleFont
        self.backgroundColor = backgroundColor
        self.layer.cornerRadius = cornerRadius
        self.translatesAutoresizingMaskIntoConstraints = false
        
        if isBorder == true {
            self.layer.borderWidth = 1
            self.layer.borderColor = UIColor.black.cgColor
        }
    }
}
