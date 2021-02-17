//
//  Car.swift
//  CarProtocolSwift
//
//  Created by 김기현 on 2021/02/17.
//

import Foundation

class Car: NSCopying {
    var appellation: String?
    var tires: [Tire]?
    
    var name: String?
    var engine: Engine?
    
    required init() {
        name = "Car"
        tires = [Tire]()
        
        for _ in 0..<4 {
            tires?.append(Tire())
        }
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        let carCopy: Car?
        carCopy = type(of: self).init()
        
        guard let result = carCopy else { fatalError("car copy fail") }
        return result
    }
    
    func setTire(_ tire: Tire?, at index: Int) {
        guard var tires = self.tires, let tire = tire else { fatalError("tires or tire nil") }
        tires[index] = tire
    }
    
    func tire(at index: Int) -> Tire? {
        let tire: Tire?
        
        guard let tires = self.tires else { fatalError("tires nil") }
        tire = tires[index]
        
        return tire
    }
    
    func printLog() {
        guard let name = self.name,
              let engine = self.engine else { fatalError() }
        
        print("\(String(describing: name)) has : ")
        
        for i in 0..<4 {
            guard let result = tire(at: i) else { fatalError() }
            print("\(result)")
        }
        
        print("\(String(describing: engine))")
    }
}
