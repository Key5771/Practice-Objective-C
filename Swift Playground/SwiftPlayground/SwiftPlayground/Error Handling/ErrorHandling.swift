//
//  File.swift
//  SwiftPlayground
//
//  Created by 김기현 on 2021/03/11.
//

import Foundation

// MARK: - Enumeration
enum VendingMachineError: Error {
    case invalidSelection
    case insufficientFunds(coinsNeeded: Int)
    case outOfStock
}


// MARK: - Struct
struct Item {
    var price: Int
    var count: Int
}

struct PurchasedSnack {
    let name: String
    
    init(name: String, vendingMachine: VendingMachine) throws {
        try vendingMachine.vend(itemNamed: name)
        self.name = name
    }
}


// MARK: - Class
class VendingMachine {
    var inventory = ["Candy Bar": Item(price: 12, count: 7), "Chips": Item(price: 10, count: 4), "Pretzels": Item(price: 7, count: 11)]
    var coinsDeposited = 0
    
    func vend(itemNamed name: String) throws {
        guard let item = inventory[name] else {
            throw VendingMachineError.invalidSelection
        }
        
        guard item.count > 0 else {
            throw VendingMachineError.outOfStock
        }
        
        guard item.price <= coinsDeposited else {
            throw VendingMachineError.insufficientFunds(coinsNeeded: item.price - coinsDeposited)
        }
        
        coinsDeposited -= item.price
        
        var newItem = item
        newItem.count -= 1
        inventory[name] = newItem
        
        print("Dispensing \(name)")
    }
}
