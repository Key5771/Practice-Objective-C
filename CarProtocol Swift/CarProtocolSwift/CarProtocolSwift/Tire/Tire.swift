//
//  Tire.swift
//  CarProtocolSwift
//
//  Created by 김기현 on 2021/02/17.
//

import Foundation

class Tire: NSCopying {
    
    var pressure: Float
    var treadDepth: Float
    
    convenience init() {
        self.init(pressure: 34, treadDepth: 20)
    }
    
    required init(pressure p: Float, treadDepth td: Float) {
        self.pressure = p
        self.treadDepth = td
    }
    
    convenience init(p: Float) {
        self.init(pressure: p, treadDepth: 20.0)
    }
    
    convenience init(td: Float) {
        self.init(pressure: 42.0, treadDepth: td)
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        let tireCopy: Tire?
        tireCopy = type(of: self).init(pressure: pressure, treadDepth: treadDepth)
        
        guard let result = tireCopy else { fatalError("copy is fail") }
        return result
    }
    
    func setPressure(p: Float) {
        pressure = p
    }
    
    func getPressure() -> Float {
        return pressure
    }
    
    func setTreadDepth(td: Float) {
        treadDepth = td
    }
    
    func getTreadDepth() -> Float {
        return treadDepth
    }
    
    func description() -> String {
        let desc: String = String(format: "Tire Pressure: %.1f TreadDepth: %.1f", pressure, treadDepth)
        
        return desc
    }
}
