//
//  ReferenceTypeWithValueType.swift
//  SwiftPlayground
//
//  Created by 김기현 on 2021/03/10.
//

import Foundation

// Address Struct
struct Address {
    var streetAddress: String
    var city: String
    var state: String
    var postalCode: String
}


// Person Class
class King {
    var name: String
    var address: Address
    
    init(name: String, address: Address) {
        self.name = name
        self.address = address
    }
}
