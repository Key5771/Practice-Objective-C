//
//  AllWeatherRadial.m
//  ObjectInit
//
//  Created by 김기현 on 2021/01/20.
//

#import <Foundation/Foundation.h>
#import "AllWeatherRadial.h"

@implementation AllWeatherRadial

- (void) setRainHandling: (float) rh {
    rainHandling = rh;
} // setRainHandling

- (float) rainHandling {
    return (rainHandling);
} // rainHandling

- (void) setSnowHandling: (float) sh {
    snowHandling = sh;
}

- (float) snowHandling {
    return (snowHandling);
}

- (NSString *) description {
    NSString *desc;
    
    desc = [[NSString alloc] initWithFormat: @"AllWeatherRadial: %.1f / %.1f / %.1f / %.1f",
            [self pressure], [self treadDepth], [self rainHandling], [self snowHandling]];
    
    return (desc);
}

@end
