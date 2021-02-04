//
//  Car.h
//  CarProperties
//
//  Created by 김기현 on 2021/02/04.
//

#ifndef Car_h
#define Car_h

#import <Cocoa/Cocoa.h>

@class Tire;
@class Engine;

@interface Car : NSObject {
    NSString *name;
    NSMutableArray *tires;
    Engine *engine;
}

- (void) setName: (NSString *) newName;
- (NSString *) name;

- (void) setEngine: (Engine *) newEngine;
- (Engine *) engine;

- (void) setTire: (Tire *) tire atIndex: (int) index;
- (Tire *) tireAtIndex: (int) index;

- (void) print;

@end // Car


#endif /* Car_h */
