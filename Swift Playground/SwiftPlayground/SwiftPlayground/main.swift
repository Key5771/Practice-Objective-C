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


// MARK: - GenericTest
//func allItemsMatch<C1: Container, C2: Container>(_ someContainer: C1, _ anotherContainer: C2) -> Bool where C1.Item == C2.Item, C1.Item: Equatable {
//    if someContainer.count != anotherContainer.count {
//        return false
//    }
//
//    for i in 0..<someContainer.count {
//        if someContainer[i] != anotherContainer[i] {
//            return false
//        }
//    }
//
//    return true
//}
//
//var stackOfStrings = Stack<String>()
//stackOfStrings.push("uno")
//stackOfStrings.push("dos")
//stackOfStrings.push("tres")
//
//var arrayOfStrings = ["uno", "dos", "tres"]
//
//if allItemsMatch(stackOfStrings, arrayOfStrings) {
//    print("All items match")
//} else {
//    print("Not all items match")
//}
//
//if stackOfStrings.isTop("tres") {
//    print("Top element is here")
//} else {
//    print("Top element is something else")
//}


// MARK: - Reference Type VS Value Type

// Class(Dog)
let dog = Dog()
let puppy = dog

puppy.wasFed = true

print("dog.wasFed : \(dog.wasFed)")
print("puppy.wasFed : \(puppy.wasFed)")

print("============================================")

// Struct(Cat)
var cat = Cat()
var kitty = cat

kitty.wasFed = true

print("cat.wasFed : \(cat.wasFed)")
print("kitty.wasFed : \(kitty.wasFed)")

print("============================================")

// Struct(Point)
let point1 = Point(x: 2, y: 3)
let point2 = Point(x: 2, y: 3)

if point1 == point2 {
    print("Equal")
} else {
    print("Not Equal")
}

print("============================================")

// Struct(Shape)
let initialPoint = Point(x: 0, y: 0)
let circle = Shape(center: initialPoint)
var square = Shape(center: initialPoint)

square.center.x = 5

print("circle: \(circle.center)")
print("square: \(square.center)")

print("============================================")

// Class(Person & Account)
let account = Account()

let person1 = Person(account)
let person2 = Person(account)

person2.account.balance += 100

print("person1: \(person1.account.balance)")
print("person2: \(person2.account.balance)")

print("============================================")
