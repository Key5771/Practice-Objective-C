//
//  main.m
//  Composition
//
//  Created by 김기현 on 2021/01/12.
//

#import <Foundation/Foundation.h>
#import "Tire.h"
#import "Engine.h"

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
// MARK: - Car
@interface Car : NSObject {
    Engine *engine;
    Tire *tires[4];
}

- (Engine *) engine;

- (void) setEngine: (Engine *) newEngine;

- (Tire *) tireAtIndex: (int) index;

- (void) setTire: (Tire *) tire
         atIndex: (int) index;

- (void) print;

@end // Car

@implementation Car

- (id) init {
    if (self = [super init]) {
        engine = [Engine new];
        
        tires[0] = [Tire new];
        tires[1] = [Tire new];
        tires[2] = [Tire new];
        tires[3] = [Tire new];
    }
    
    return (self);
} // init

- (Engine *) engine {
    return (engine);
} // engine

- (void) setEngine:(Engine *) newEngine {
    engine = newEngine;
} // setEngine

- (void) setTire: (Tire *) tire atIndex: (int) index {
    if (index < 0 || index > 3) {
        NSLog(@"bad index (%d) in setTire:atIndex:", index);
        exit(1);
    }
    
    tires[index] = tire;
} // setTire:atIndex:

- (Tire *) tireAtIndex: (int) index {
    if (index < 0 || index > 3) {
        NSLog(@"bad index (%d) in tireAtIndex:", index);
        exit(1);
    }
    
    return (tires[index]);
} // tireAtIndex:

- (void) print {
    NSLog(@"%@", engine);
    
    NSLog(@"%@", tires[0]);
    NSLog(@"%@", tires[1]);
    NSLog(@"%@", tires[2]);
    NSLog(@"%@", tires[3]);
} // print

@end // Car


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
