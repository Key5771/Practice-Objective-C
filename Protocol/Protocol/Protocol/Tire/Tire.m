//
//  Tire.m
//  Protocol
//
//  Created by 김기현 on 2021/02/16.
//

#import <Foundation/Foundation.h>
#import "Tire.h"

@implementation Tire

// MARK: - Initializer
- (id) init {
    if (self = [self initWithPressure: 34 treadDepth: 20]) {
        
    }
    
    return self;
} // init

- (id) initWithPressure: (float) p treadDepth: (float) td {
    if (self = [super init]) {
        pressure = p;
        treadDepth = td;
    }
    
    return self;
} // initWithPressure:treadDepth:

- (id) initWithPressure: (float) pressure {
    if (self = [self initWithPressure: pressure treadDepth: 20.0]) {
        
    }
    
    return self;
} // initWithPressure:

- (id) initWithTreadDepth: (float) treadDepth {
    if (self = [self initWithPressure: 42.0 treadDepth: treadDepth]) {
        
    }
    
    return self;
} // initWithTreadDepth:

- (id) copyWithZone: (NSZone *) zone {
    Tire * tireCopy;
    tireCopy = [[[self class] allocWithZone: zone] initWithPressure: pressure treadDepth: treadDepth];
    
    return tireCopy;
} // copyWithZone: (NSCopying protocol method)


// MARK: - Method
- (void) setPressure: (float) p {
    pressure = p;
} // setPressure:

- (float) pressure {
    return pressure;
} // pressure

- (void) setTreadDepth: (float) td {
    treadDepth = td;
} // setTreadDepth:

- (float) treadDepth {
    return treadDepth;
} // treadDepth

- (NSString *) description {
    NSString * desc;
    desc = [NSString stringWithFormat: @"Tire: Pressure: %.1f TreadDepth: %.1f",
            pressure, treadDepth];
    
    return desc;
}

@end
