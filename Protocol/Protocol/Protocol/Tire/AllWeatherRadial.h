//
//  AllWeatherRadial.h
//  Protocol
//
//  Created by 김기현 on 2021/02/16.
//

#ifndef AllWeatherRadial_h
#define AllWeatherRadial_h

#import "Tire.h"

@interface AllWeatherRadial : Tire {
    float rainHandling;
    float snowHandling;
}

@property float rainHandling;
@property float snowHandling;

@end // AllWeatherRadial

#endif /* AllWeatherRadial_h */
