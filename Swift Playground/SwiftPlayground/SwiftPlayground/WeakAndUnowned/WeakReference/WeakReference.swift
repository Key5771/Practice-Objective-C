//
//  WeakReference.swift
//  SwiftPlayground
//
//  Created by 김기현 on 2021/03/10.
//

import Foundation

class MyPerson {
    let name: String
    
    init(name: String) { self.name = name }
    
    var apartment: Apartment?
    
    deinit { print("\(name) is being deinit ") }
}

class Apartment {
    let unit: String
    
    init(unit: String) { self.unit = unit }
    
    weak var tenant: MyPerson?
    
    deinit { print("Apartment \(unit) is being deinit") }
}
