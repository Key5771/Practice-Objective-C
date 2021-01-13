//
//  Car.h
//  Composition
//
//  Created by 김기현 on 2021/01/13.
//

#ifndef Car_h
#define Car_h

#import <Cocoa/Cocoa.h>

@class Tire;
@class Engine;

@interface Car : NSObject {
    Tire *tires[4];
    Engine *engine;
}

- (void) setEngine: (Engine *) newEngine;

- (Engine *) engine;

- (void) setTire: (Tire *) tire
         atIndex: (int) index;

- (Tire *) tireAtIndex: (int) index;

- (void) print;

@end // Car

#endif /* Car_h */
