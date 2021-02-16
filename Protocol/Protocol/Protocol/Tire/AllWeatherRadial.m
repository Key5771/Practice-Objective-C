//
//  AllWeatherRadial.m
//  Protocol
//
//  Created by 김기현 on 2021/02/16.
//

#import <Foundation/Foundation.h>
#import "AllWeatherRadial.h"

@implementation AllWeatherRadial

@synthesize rainHandling;
@synthesize snowHandling;

// MARK: - Initializer
- (id) initWithPressure: (float) p treadDepth: (float) td {
    if (self = [super initWithPressure: p treadDepth: td]) {
        rainHandling = 23.7;
        snowHandling = 42.5;
    }
    
    return self;
} // initWithPressure:treadDepth:

- (id) copyWithZone: (NSZone *) zone {
    AllWeatherRadial * tireCopy;
    tireCopy = [super copyWithZone: zone];
    
    [tireCopy setRainHandling: rainHandling];
    [tireCopy setSnowHandling: snowHandling];
    
    return tireCopy;
} // copyWithZone:

// MARK: - Method
- (NSString *) description {
    NSString * desc;
    desc = [[NSString alloc] initWithFormat: @"AllWeatherRadial: %.1f / %.1f / %.1f / %.1f",
            [self pressure], [self treadDepth], [self rainHandling], [self snowHandling]];
    
    return desc;
} // description

@end // AllWeatherRadial
