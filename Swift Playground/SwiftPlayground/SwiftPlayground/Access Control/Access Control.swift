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

// protocol A는 internal protocol
protocol A {
    var a: String { get }
}

// protocol B는 internal protocol A를 상속받기 때문에 internal, fileprivate, private 접근레벨만 가질 수 있다.
fileprivate protocol B: A {
    var b: String { get }
}

class Test: B {
    let a: String
    let b: String
    
    init(a: String, b: String) {
        self.a = a
        self.b = b
    }
    
    func stringResult(_ a: String, _ b: String) -> String {
        return a + b
    }
}
