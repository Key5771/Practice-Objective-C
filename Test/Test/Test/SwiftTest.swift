//
//  SwiftTest.swift
//  Test
//
//  Created by 김기현 on 2021/02/18.
//

import Foundation

@objc class SwiftTest : NSObject {
    
    @objc func swiftVersionCheck() {
        #if swift(>=5.2)
        print("Hello, Swift 5.2")
        
        #elseif swift(>=5.1)
        print("Hello, Swift 5.1")
        
        #elseif swift(>=5.0)
        print("Hello, Swift 5.0")
        
        #elseif swift(>=4.2)
        print("Hello, Swift 4.2")
        
        #elseif swift(>=4.0)
        print("Hello, Swift 4.0")
        
        #elseif swift(>=3.0)
        print("Hello, Swift 5.1")
        
        #endif
    }
    
    @objc func sayHello() {
        print("Hello, World")
    }
    
    @objc func say() {
        print("Swift Test")
    }
}
