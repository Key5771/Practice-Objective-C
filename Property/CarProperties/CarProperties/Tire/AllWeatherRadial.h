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

// MARK: - Property로 선언함으로써 세터와 게터의 역할을 하는 메소드를 자동으로 생성해준다.
@property float rainHandling;
@property float snowHandling;

// MARK: - 기존의 세테 메소드와 게터 메소드를 사용하는 방식
//- (void) setRainHandling: (float) rainHandling;
//- (float) rainHandling;
//
//- (void) setSnowHandling: (float) snowHandling;
//- (float) snowHandling;

@end // AllWeatherRadial

#endif /* AllWeatherRadial_h */
