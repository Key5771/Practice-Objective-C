//
//  Engine.swift
//  CarProtocolSwift
//
//  Created by 김기현 on 2021/02/17.
//

import Foundation

class Engine: NSCopying {
    required init() {
        
    }
    
    func copy(with zone: NSZone? = nil) -> Any {
        let engineCopy: Engine?
        engineCopy = type(of: self).init()
        
        guard let result = engineCopy else { fatalError("engine copy fail") }
        return result
    }
    
    func description() -> String {
        return "I am an engine. Vroom!"
    }
}
