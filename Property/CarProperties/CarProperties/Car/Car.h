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
    NSString *appellation;
    NSMutableArray *tires;
    Engine *engine;
}

@property (copy) NSString *name;
@property (retain) Engine *engine;

- (void) setTire: (Tire *) tire atIndex: (int) index;
- (Tire *) tireAtIndex: (int) index;

- (void) print;

@end // Car


#endif /* Car_h */
