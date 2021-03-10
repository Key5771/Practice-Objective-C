//
//  ReferenceType.swift
//  SwiftPlayground
//
//  Created by 김기현 on 2021/03/10.
//

import Foundation

// Dog Class
class Dog {
    var wasFed: Bool = false
}


// Account Class
class Account {
    var balance = 0.0
}

// Person Class
class Person {
    let account: Account
    
    init(_ account: Account) {
        self.account = account
    }
}


