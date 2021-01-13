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

// MARK: - Tire
@interface AllWeatherRadial : Tire
@end // AllWeatherRadial

@implementation AllWeatherRadial

- (NSString *) description {
    return (@"I am a tire for rain or shine.");
}

@end // AllWeatherRadial

// MARK: - Engine
@interface Slant6 : Engine
@end // Slant6

@implementation Slant6

- (NSString *) description {
    return (@"I am a slant-6. VROOOM!");
}

@end // Slant6

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
