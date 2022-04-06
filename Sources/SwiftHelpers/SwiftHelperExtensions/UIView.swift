//
//  UIView.swift
//  
//
//  Created by Ali Can Tozlu on 6.04.2022.
//

import UIKit

/// Add cornerRadius to expected corner with desired value
extension UIView {
   public func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
}
