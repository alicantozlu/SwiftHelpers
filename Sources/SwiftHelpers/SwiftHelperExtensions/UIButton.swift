//
//  UIButton.swift
//  
//
//  Created by Ali Can Tozlu on 8.04.2022.
//

import UIKit

extension UIButton{
    public func cornerConfig(cornerRadius: Int ?? 15, borderWidth: Int ?? 0, borderColor: CGColor ?? UIColor.black.cgColor){
        self.layer.cornerRadius = cornerRadius
        self.layer.borderWidth = borderWidth
        self.layer.borderColor = borderColor
    }
}
