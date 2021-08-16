//
//  UIStackView + Extension.swift
//  iChat
//
//  Created by Дмитрий  on 16.08.2021.
//

import UIKit

extension UIStackView {
    convenience init(arrangedSubview: [UIView], axis: NSLayoutConstraint.Axis, spacing: CGFloat) {
        
        self.init(arrangedSubviews: arrangedSubview)
        self.axis = axis
        self.spacing = spacing
        
    }
}
