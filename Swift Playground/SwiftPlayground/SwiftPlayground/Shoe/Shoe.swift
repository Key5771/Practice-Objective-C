//
//  Shoe.swift
//  SwiftPlayground
//
//  Created by 김기현 on 2021/02/23.
//

import Foundation

class Shoe: CustomStringConvertible {
    
    let color: String
    let size: Int
    let hasLaces: Bool
    
    init(color: String, size: Int, hasLaces: Bool) {
        self.color = color
        self.size = size
        self.hasLaces = hasLaces
    }
    
    var description: String {
        return "Shoe(color: \(color), size: \(size), hasLaces: \(hasLaces))"
    }
}
