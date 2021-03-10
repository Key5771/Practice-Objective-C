//
//  Value Type.swift
//  SwiftPlayground
//
//  Created by 김기현 on 2021/03/10.
//

import Foundation


// Cat Struct
struct Cat {
    var wasFed: Bool = false
}

// Point Struct
struct Point: CustomStringConvertible {
    var x: Float
    var y: Float
    
    var description: String {
        return "{x: \(x), y: \(y)}"
    }
}

extension Point: Equatable {
    static func ==(lhs: Point, rhs: Point) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
}

// Shape Struct
struct Shape {
    var center: Point
}
