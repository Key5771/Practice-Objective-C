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
//let dog = Dog()
//let puppy = dog
//
//puppy.wasFed = true
//
//print("dog.wasFed : \(dog.wasFed)")
//print("puppy.wasFed : \(puppy.wasFed)")
//
//print("============================================")
//
//// Struct(Cat)
//var cat = Cat()
//var kitty = cat
//
//kitty.wasFed = true
//
//print("cat.wasFed : \(cat.wasFed)")
//print("kitty.wasFed : \(kitty.wasFed)")
//
//print("============================================")

// Struct(Point)
//let point1 = Point(x: 2, y: 3)
//let point2 = Point(x: 2, y: 3)
//
//if point1 == point2 {
//    print("Equal")
//} else {
//    print("Not Equal")
//}
//
//print("============================================")

// Struct(Shape)
//let initialPoint = Point(x: 0, y: 0)
//let circle = Shape(center: initialPoint)
//var square = Shape(center: initialPoint)
//
//square.center.x = 5
//
//print("circle: \(circle.center)")
//print("square: \(square.center)")
//
//print("============================================")

// Class(Person & Account)
//let account = Account()
//
//let person1 = Person(account)
//let person2 = Person(account)
//
//person2.account.balance += 100
//
//print("person1: \(person1.account.balance)")
//print("person2: \(person2.account.balance)")
//
//print("============================================")

// Class & Struct(Address Struct in Person Class)
//let kingsLanding = Address(streetAddress: "1 King Way", city: "Kings Landing", state: "Westeros", postalCode: "12345")
//let madKing = King(name: "Aerys", address: kingsLanding)
//let kingSlayer = King(name: "Jaime", address: kingsLanding)
//
//kingSlayer.address.streetAddress = "1 King Way Apt. 1"
//
//print("madKing: \(madKing.address.streetAddress)")
//print("kingSlayer: \(kingSlayer.address.streetAddress)")
//
//
//print("============================================")
//
//let billPlayer = King(name: "Robert", address: kingsLanding)
//
//let bill = Bill(amount: 42.99, billedTo: billPlayer)
//let bill2 = bill

//print("before")
//print("bill.billedTo.name: \(bill.billedTo.name)")
//print("bill2.billedTo.name: \(bill2.billedTo.name)")
//
//bill.billedTo.name = "Bob"
//
//print("after")
//print("bill.billedTo.name: \(bill.billedTo.name)")
//print("bill2.billedTo.name: \(bill2.billedTo.name)")

//print("============================================")

//var papa: Family? = Family()
//var mama: Family? = Family()
//papa = nil
//mama = nil


//print("============================================")

//var me: MyPerson?
//var unit4A: Apartment?
//
//me = MyPerson(name: "Key")
//unit4A = Apartment(unit: "Prugio")
//
//me!.apartment = unit4A
//unit4A!.tenant = me
//
//me = nil
//unit4A = nil

//print("============================================")

//var key: Customer?
//
//key = Customer(name: "key")
//key!.card = CreditCard(number: 1234_5678_9012_3456, customer: key!)
//
//key = nil

print("============================================")

let department = Department(name: "Horticulture")

let intro = Course(name: "Survey of Plants", in: department)
let intermediate = Course(name: "Growing Common Herbs", in: department)
let advanced = Course(name: "Caring for Tropical Plants", in: department)

intro.nextCourse = intermediate
intermediate.nextCourse = advanced
department.courses = [intro, intermediate, advanced]

guard let next = intro.nextCourse?.name, let next2 = intermediate.nextCourse?.name else { fatalError() }
print("intro next: \(next)")
print("intermediate next: \(next2)")
