//
//  Car.m
//  CarProperties
//
//  Created by 김기현 on 2021/02/04.
//

#import <Foundation/Foundation.h>

#import "Car.h"
#import "Tire.h"
#import "Engine.h"

@implementation Car

- (id) init {
    if (self = [super init]) {
        tires = [[NSMutableArray alloc] init];
        
        int i;
        for (i = 0; i < 4; i++) {
            [tires addObject: [NSNull null]];
        }
    }
    
    return (self);
}

- (void) setEngine: (Engine *) newEngine {
    engine = newEngine;
} // setEngine

- (Engine *) engine {
    return (engine);
} // engine

- (void) setTire: (Tire *) tire atIndex: (int) index {
//    if (index < 0 || index > 3) {
//        NSLog(@"bad index (%d) in setTire:atIndex:", index);
//        exit(1);
//    }
//
//    tires[index] = tire;
    
    [tires replaceObjectAtIndex: index withObject: tire];
} // setTire:atIndex:

- (Tire *) tireAtIndex: (int) index {
//    if (index < 0 || index > 3) {
//        NSLog(@"bad index (%d) in tireAtIndex:", index);
//        exit(1);
//    }
//
//    return (tires[index]);
    
    Tire *tire;
    tire = [tires objectAtIndex: index];
    
    return (tire);
} // tireAtIndex:

- (void) print {
    int i;
    for (i = 0; i < 4; i++) {
        NSLog(@"%@", [self tireAtIndex: i]);
    }
    
    NSLog(@"%@", engine);
} // print

@end // Car
