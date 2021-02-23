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
        let doesOrDoesNot = hasLaces ? "does" : "does not"
        return "This shoe is \(color), size \(size), and \(doesOrDoesNot) have laces"
    }
}
