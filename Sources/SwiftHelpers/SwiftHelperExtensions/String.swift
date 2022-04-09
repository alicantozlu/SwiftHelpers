//
//  String.swift
//  
//
//  Created by Ali Can Tozlu on 9.04.2022.
//

import Foundation

extension String {
    public func capitalizingFirstLetter() -> String {
      return prefix(1).uppercased() + self.lowercased().dropFirst()
    }
}
