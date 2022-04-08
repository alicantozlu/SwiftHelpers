//
//  UIButton.swift
//  
//
//  Created by Ali Can Tozlu on 8.04.2022.
//

import UIKit

extension UIButton{
    /// Default: cornerRadius: 10 | borderWidth: 0 | borderColor: Black
    public func cornerConfig(cornerRadius: Double = 10, borderWidth: Double = 0, borderColor: CGColor = UIColor.black.cgColor){
        self.layer.cornerRadius = cornerRadius
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor
    }
}
