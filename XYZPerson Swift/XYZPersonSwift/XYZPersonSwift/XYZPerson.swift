//
//  XYZPerson.swift
//  XYZPersonSwift
//
//  Created by 김기현 on 2021/02/17.
//

import Foundation

class XYZPerson {
    var firstName: String
    var lastName: String
    
    init(aFirstName: String, aLastName: String) {
        self.firstName = aFirstName
        self.lastName = aLastName
    }
    
    init() {
        self.firstName = "John"
        self.lastName = "Doe"
    }
    
    func sayHello(name: String) {
        self.saySomething(greet: name)
    }
    
    func saySomething(greet: String) {
        print("Hello, \(greet)")
    }
    
    func magicNumber() -> Int {
        return 42
    }
    
    func magicString(input: String) -> String {
        return input.uppercased()
    }
    
    func getFullName() -> String {
        return self.firstName + " " + self.lastName
    }
}
