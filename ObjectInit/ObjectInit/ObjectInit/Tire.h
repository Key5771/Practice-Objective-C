//
//  Tire.h
//  ObjectInit
//
//  Created by 김기현 on 2021/01/20.
//

#ifndef Tire_h
#define Tire_h

#import<Cocoa/Cocoa.h>

@interface Tire : NSObject {
    float pressure;
    float treadDepth;
}

- (void) setPressure: (float) pressure;
- (float) pressure;

- (void) setTreadDepth: (float) treadDepth;
- (float) treadDepth;

@end // Tire

#endif /* Tire_h */
