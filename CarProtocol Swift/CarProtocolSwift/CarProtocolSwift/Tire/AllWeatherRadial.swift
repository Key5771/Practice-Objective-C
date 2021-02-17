//
//  AllWeatherRadial.swift
//  CarProtocolSwift
//
//  Created by 김기현 on 2021/02/17.
//

import Foundation

class AllWeatherRadial: Tire {
    var rainHandling: Float
    var snowHandling: Float
    
    required init(pressure: Float, treadDepth: Float) {
        rainHandling = 23.7
        snowHandling = 42.5
        
        super.init(pressure: pressure, treadDepth: treadDepth)
    }
    
    override func copy(with zone: NSZone? = nil) -> Any {
        let tireCopy: AllWeatherRadial?
        tireCopy = super.copy(with: zone) as? AllWeatherRadial
        
        tireCopy?.rainHandling = self.rainHandling
        tireCopy?.snowHandling = self.snowHandling
        
        guard let copyResult = tireCopy else { fatalError() }
        
        return copyResult
    }
    
    override func description() -> String {
        let desc: String
        
        desc = String(format: "AllWeatherRadial: %.1f, %.1f, %.1f, %.1f",
                      self.pressure, self.treadDepth, self.rainHandling, self.snowHandling)
        
        return desc
    }
}
