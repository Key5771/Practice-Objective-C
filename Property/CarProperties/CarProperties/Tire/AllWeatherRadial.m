//
//  AllWeatherRadial.m
//  CarProperties
//
//  Created by 김기현 on 2021/02/04.
//

#import <Foundation/Foundation.h>
#import "AllWeatherRadial.h"

// MARK: - Synthesize를 사용한 새로운 코드
@implementation AllWeatherRadial

@synthesize rainHandling;
@synthesize snowHandling;

- (id) initWithPressure: (float) p
             treadDepth: (float) td {
    if (self = [super initWithPressure: p treadDepth: td]) {
        rainHandling = 23.7;
        snowHandling = 42.5;
    }
    
    return (self);
} // initWithPressure:treadDepth:

- (NSString *) description {
    NSString *desc;
    desc = [[NSString alloc] initWithFormat: @"AllWeatherRadial: %.1f / %.1f / %.1f / %.1f",
            [self pressure], [self treadDepth], [self rainHandling], [self snowHandling]];
    
    return (desc);
} // description

@end


// MARK: - 기존에 사용했던 init 메서드와 세터/게터 메소드
//@implementation AllWeatherRadial
//
//- (id) initWithPressure: (float) p treadDepth: (float) td {
//    if (self = [super initWithPressure: p treadDepth: td]) {
//        rainHandling = 23.7;
//        snowHandling = 42.5;
//    }
//
//    return (self);
//} // initWithPressure:treadDepth:
//
//- (void) setRainHandling: (float) rh {
//    rainHandling = rh;
//} // setRainHandling
//
//- (float) rainHandling {
//    return (rainHandling);
//} // rainHandling
//
//- (void) setSnowHandling: (float) sh {
//    snowHandling = sh;
//}
//
//- (float) snowHandling {
//    return (snowHandling);
//}
//
//- (NSString *) description {
//    NSString *desc;
//
//    desc = [[NSString alloc] initWithFormat: @"AllWeatherRadial: %.1f / %.1f / %.1f / %.1f",
//            [self pressure], [self treadDepth], [self rainHandling], [self snowHandling]];
//
//    return (desc);
//}
//
//@end // AllWeatherRadial
