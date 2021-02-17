//
//  XYZShoutingPerson.swift
//  XYZPersonSwift
//
//  Created by 김기현 on 2021/02/17.
//

import Foundation

class XYZShoutingPerson: XYZPerson {
    var someString: String?
    
    func someMethod() {
        let myString: String = "An interesting string"
        
        self.someString = myString
        
        guard let someStr = someString else { return }
        
        print("someString: \(someStr)")
    }
    
    func saySomeThing(greet: String) {
        let uppercaseGreeting: String = greet.uppercased()
        super.saySomething(greet: uppercaseGreeting)
    }
}
