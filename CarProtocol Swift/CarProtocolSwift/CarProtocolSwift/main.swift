//
//  main.swift
//  CarProtocolSwift
//
//  Created by 김기현 on 2021/02/17.
//

import Foundation

let car: Car = Car()
car.name = "Herbie"

for i in 0..<4 {
    let tire: Tire = Tire()
    
    print("tire: \(tire.description())")
    
    car.setTire(tire, at: i)
}

car.engine = Engine()

car.printLog()
