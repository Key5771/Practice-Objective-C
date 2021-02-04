//
//  AllWeatherRadial.h
//  CarProperties
//
//  Created by 김기현 on 2021/02/04.
//

#ifndef AllWeatherRadial_h
#define AllWeatherRadial_h

#import "Tire.h"

@interface AllWeatherRadial : Tire {
    float rainHandling;
    float snowHandling;
}

- (void) setRainHandling: (float) rainHandling;
- (float) rainHandling;

- (void) setSnowHandling: (float) snowHandling;
- (float) snowHandling;

@end // AllWeatherRadial

#endif /* AllWeatherRadial_h */
