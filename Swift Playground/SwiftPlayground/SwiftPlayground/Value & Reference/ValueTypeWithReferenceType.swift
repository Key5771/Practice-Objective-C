//
//  ValueTypeWithReferenceType.swift
//  SwiftPlayground
//
//  Created by 김기현 on 2021/03/10.
//

import Foundation

struct Bill {
    let amount: Float
    let billedTo: King
    
    init(amount: Float, billedTo: King) {
        self.amount = amount
        self.billedTo = King(name: billedTo.name, address: billedTo.address)
    }
}


