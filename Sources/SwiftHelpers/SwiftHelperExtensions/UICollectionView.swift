//
//  UICollectionView.swift
//  
//
//  Created by Ali Can Tozlu on 6.04.2022.
//

import UIKit

extension UICollectionView{
    
    public func register(cellType: UICollectionViewCell.Type){
        register(cellType.nib, forCellWithReuseIdentifier: cellType.identifier)
    }
    
    public func dequeCell<T: UICollectionViewCell>(cellType: T.Type, indexPath: IndexPath) -> T {
        guard let cell = dequeueReusableCell(withReuseIdentifier: cellType.identifier, for: indexPath) as? T else {
            fatalError("CollectionView Cell Olusturulurken Hata Olustu")
        }
        return cell
    }
}
