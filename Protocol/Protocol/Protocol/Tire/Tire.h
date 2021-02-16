//
//  Tire.h
//  Protocol
//
//  Created by 김기현 on 2021/02/16.
//

#ifndef Tire_h
#define Tire_h

@interface Tire : NSObject {
    float pressure;
    float treadDepth;
}

- (id) initWithPressure: (float) pressure;
- (id) initWithTreadDepth: (float) treadDepth;

- (id) initWithPressure: (float) pressure
             treadDepth: (float) treadDepth;

- (void) setPressure: (float) pressure;
- (float) pressure;

- (void) setTreadDepth: (float) treadDepth;
- (float) treadDepth;

@end // Tire

#endif /* Tire_h */
