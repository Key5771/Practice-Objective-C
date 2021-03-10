//
//  ARCTest.swift
//  SwiftPlayground
//
//  Created by 김기현 on 2021/03/10.
//

import Foundation

class Family {
    static var ARC = 0
    
    init() {
        Family.ARC += 1
        print("Family is maked. \(Family.ARC)")
    }
    
    deinit {
        Family.ARC -= 1
        print("Family is deleted. \(Family.ARC)")
    }
}
