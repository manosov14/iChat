//
//  UIButton+Extension.swift
//  iChat
//
//  Created by Дмитрий  on 16.08.2021.
//

import UIKit

extension UIButton {
    
    convenience init(title: String,
                     backgroundColor: UIColor,
                     titleColor: UIColor,
                     font: UIFont?,
                     isShadow: Bool,
                     cornerRadius: CGFloat) {
        self.init(type: .system)
        
        self.setTitle(title, for: .normal)
        self.backgroundColor = backgroundColor
        self.layer.cornerRadius = cornerRadius
        self.setTitleColor(titleColor, for: .normal)
        self.titleLabel?.font = font
        
        if isShadow {
            self.layer.shadowColor = UIColor.black.cgColor
            self.layer.shadowRadius = 4
            self.layer.shadowOpacity = 0.2
            self.layer.shadowOffset = CGSize(width: 0, height: 4)
        }
        
    }
}
