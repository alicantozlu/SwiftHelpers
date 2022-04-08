//
//  UIButton.swift
//  
//
//  Created by Ali Can Tozlu on 8.04.2022.
//

import UIKit

extension UIButton{
    /// Default: cornerRadius: 10 | borderWidth: 0 | borderColor: Black
    public func cornerConfig(cornerRadius: Double?, borderWidth: Double?, borderColor: CGColor?){
        self.layer.cornerRadius = cornerRadius ?? 10
        self.layer.borderWidth = borderWidth ?? 0
        self.layer.borderColor = borderColor ?? UIColor.black.cgColor
    }
}
