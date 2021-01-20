//
//  Tire.m
//  ObjectInit
//
//  Created by 김기현 on 2021/01/20.
//

#import "Tire.h"


@implementation Tire

- (id) init {
    if (self = [super init]) {
        pressure = 34.0;
        treadDepth = 20.0;
    }
    
    return (self);
}

- (void) setPressure: (float) p {
    pressure = p;
}

- (float) pressure {
    return (pressure);
}

- (void) setTreadDepth: (float) td {
    treadDepth = td;
}

- (float) treadDepth {
    return (treadDepth);
}

- (NSString *) description {
    NSString *desc;
    desc = [NSString stringWithFormat: @"Tire: Pressure: %.1f TreadDepth: %.1f", pressure, treadDepth];
    
    return (desc);
}

@end // Tire
