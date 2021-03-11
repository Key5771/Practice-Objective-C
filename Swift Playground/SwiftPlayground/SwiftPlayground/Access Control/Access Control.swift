//
//  File.swift
//  SwiftPlayground
//
//  Created by 김기현 on 2021/03/11.
//

import Foundation

struct TrackedString {
    // public은 getter의 접근레벨, private은 setter의 접근레벨
    public private(set) var numberOfEdits = 0
    
    var value: String = "" {
        didSet {
            numberOfEdits += 1
        }
    }
}
