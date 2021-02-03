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

- (id) initWithPressure: (float) p treadDepth: (float) td {
    if (self = [super init]) {
        pressure = p;
        treadDepth = td;
    }
    
    return (self);
} // initWithPressure:treadDepth

// pressure를 값을 넘겨받아 설정하고 treadDepth는 20.0으로 초기화
- (id) initWithPressure: (float) p {
    if (self = [super init]) {
        pressure = p;
        treadDepth = 20.0;
    }
    
    return (self);
} // initWithPressure:

// pressure는 34.0으로 초기화하고 treadDepth는 값을 넘겨받아 설정
- (id) initWithTreadDepth: (float) td {
    if (self = [super init]) {
        pressure = 34.0;
        treadDepth = td;
    }
    
    return (self);
} // initWithTreadDepth:

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
