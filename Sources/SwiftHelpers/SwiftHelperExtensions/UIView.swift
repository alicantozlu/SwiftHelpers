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
        self.layer.mask = mask
        
        /*yourView.clipsToBounds = true
        yourView.layer.cornerRadius = 10
        yourView.layer.maskedCorners = [.layerMaxXMinYCorner, .layerMinXMinYCorner]*/
    }
    
    
    
    
    //MARK: - UIView Shadow Functions
    
    ///Default: borderWidth: 0.0 | shadowColor: black | shadowOffset: width: 0, height: 0 | shadowRadius: 5.0 | shadowOpacity: 1
    public func shadowMaker(borderWidth: Double?, shadowColor: CGColor?, shadowOffset: CGSize?, shadowRadius: Double?, shadowOpacity: Float?){
        self.layer.borderWidth = borderWidth ?? 0.0
        self.layer.shadowColor = shadowColor ?? UIColor.black.cgColor
        self.layer.shadowOffset = shadowOffset ?? CGSize(width: 0, height: 0)
        self.layer.shadowRadius = shadowRadius ?? 5.0
        self.layer.shadowOpacity = shadowOpacity ?? 1
        self.layer.masksToBounds = false
    }
    
    
    public func addShadow(to edges: [UIRectEdge], radius: CGFloat = 3.0, opacity: Float = 0.6, color: CGColor = UIColor.black.cgColor) {
        let fromColor = color
        let toColor = UIColor.clear.cgColor
        let viewFrame = self.frame
        for edge in edges {
            let gradientLayer = CAGradientLayer()
            gradientLayer.colors = [fromColor, toColor]
            gradientLayer.opacity = opacity
            
            switch edge {
            case .top:
                gradientLayer.startPoint = CGPoint(x: 0.5, y: 0.0)
                gradientLayer.endPoint = CGPoint(x: 0.5, y: 1.0)
                gradientLayer.frame = CGRect(x: 0.0, y: 0.0, width: viewFrame.width, height: radius)
            case .bottom:
                gradientLayer.startPoint = CGPoint(x: 0.5, y: 1.0)
                gradientLayer.endPoint = CGPoint(x: 0.5, y: 0.0)
                gradientLayer.frame = CGRect(x: 0.0, y: viewFrame.height - radius, width: viewFrame.width, height: radius)
            case .left:
                gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.5)
                gradientLayer.endPoint = CGPoint(x: 1.0, y: 0.5)
                gradientLayer.frame = CGRect(x: 0.0, y: 0.0, width: radius, height: viewFrame.height)
            case .right:
                gradientLayer.startPoint = CGPoint(x: 1.0, y: 0.5)
                gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.5)
                gradientLayer.frame = CGRect(x: viewFrame.width - radius, y: 0.0, width: radius, height: viewFrame.height)
            default:
                break
            }
            self.layer.addSublayer(gradientLayer)
        }
    }
    
    public func removeAllShadows() {
        if let sublayers = self.layer.sublayers, !sublayers.isEmpty {
            for sublayer in sublayers {
                sublayer.removeFromSuperlayer()
            }
        }
    }
}
