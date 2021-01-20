//
//  Car.h
//  ObjectInit
//
//  Created by 김기현 on 2021/01/20.
//

#ifndef Car_h
#define Car_h

#import <Cocoa/Cocoa.h>

@class Tire;
@class Engine;

@interface Car : NSObject {
    NSMutableArray *tires;
    Engine *engine;
}

- (void) setEngine: (Engine *) newEngine;
- (Engine *) engine;

- (void) setTire: (Tire *) tire atIndex: (int) index;
- (Tire *) tireAtIndex: (int) index;

- (void) print;

@end // Car

#endif /* Car_h */
