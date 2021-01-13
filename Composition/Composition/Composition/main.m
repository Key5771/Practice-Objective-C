//
//  main.m
//  Composition
//
//  Created by 김기현 on 2021/01/12.
//

#import <Foundation/Foundation.h>
#import "Tire.h"
#import "Engine.h"
#import "Car.h"
#import "Slant6.h"
#import "AllWeatherRadial.h"

// MARK: - main
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car *car = [Car new];
        
        Engine *engine = [Slant6 new];
        [car setEngine: engine];
        
        int i;
        for (i = 0; i < 4; i++) {
            Tire *tire = [AllWeatherRadial new];
            
            [car setTire: tire atIndex: i];
        }
        
        [car print];
    }
    
    return 0;
} // main
