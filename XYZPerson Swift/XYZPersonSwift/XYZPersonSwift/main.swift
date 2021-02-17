//
//  main.swift
//  XYZPersonSwift
//
//  Created by 김기현 on 2021/02/17.
//

import Foundation

let somePerson = XYZPerson(aFirstName: "KiHyun", aLastName: "Kim")
let anotherPerson = XYZPerson()

let someFullName: String = somePerson.getFullName()
let anotherFullName: String = anotherPerson.getFullName()

print("someFullName: \(someFullName)")
somePerson.sayHello(name: someFullName)

print("==============================")

print("anotherFullName: \(anotherFullName)")
anotherPerson.sayHello(name: anotherFullName)


print("++++++++++++++++++++++++++++++")

let someShoutingPerson: XYZShoutingPerson = XYZShoutingPerson(aFirstName: "KiHyun", aLastName: "Kim")
someShoutingPerson.someMethod()
someShoutingPerson.saySomeThing(greet: someShoutingPerson.getFullName())
