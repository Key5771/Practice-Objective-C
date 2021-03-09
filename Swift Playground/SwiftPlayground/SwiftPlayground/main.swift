//
//  main.swift
//  SwiftPlayground
//
//  Created by 김기현 on 2021/02/23.
//

import Foundation

//let myShoe = Shoe(color: "Black", size: 12, hasLaces: true)
//let yourShoe = Shoe(color: "Red", size: 8, hasLaces: false)
//
//print(myShoe)
//print(yourShoe)

func allItemsMatch<C1: Container, C2: Container>(_ someContainer: C1, _ anotherContainer: C2) -> Bool where C1.Item == C2.Item, C1.Item: Equatable {
    if someContainer.count != anotherContainer.count {
        return false
    }
    
    for i in 0..<someContainer.count {
        if someContainer[i] != anotherContainer[i] {
            return false
        }
    }
    
    return true
}

var stackOfStrings = Stack<String>()
stackOfStrings.push("uno")
stackOfStrings.push("dos")
stackOfStrings.push("tres")

var arrayOfStrings = ["uno", "dos", "tres"]

if allItemsMatch(stackOfStrings, arrayOfStrings) {
    print("All items match")
} else {
    print("Not all items match")
}

if stackOfStrings.isTop("tres") {
    print("Top element is here")
} else {
    print("Top element is something else")
}
