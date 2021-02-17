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
    let tire: AllWeatherRadial = AllWeatherRadial()
    
    tire.rainHandling = 20 + Float(i)
    tire.snowHandling = 28 + Float(i)
    
    print("the tire's handling is", tire.rainHandling, tire.snowHandling)
    
    car.setTire(tire, at: i)
}

car.engine = Slant6()

car.printLog()

print("=======================")

guard let carCopy = car.copy() as? Car else { fatalError() }

carCopy.printLog()
