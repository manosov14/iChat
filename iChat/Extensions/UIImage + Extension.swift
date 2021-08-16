//
//  extension + UIImage.swift
//  iChat
//
//  Created by Дмитрий  on 16.08.2021.
//

import UIKit

extension UIImageView {
    
    convenience init(image: UIImage?, contentMode: UIView.ContentMode) {
        
        self.init()
        
        self.image = image
        self.contentMode = contentMode
        
    }
}
