//
//  main.m
//  Composition
//
//  Created by 김기현 on 2021/01/12.
//

#import <Foundation/Foundation.h>

@interface Tire : NSObject
@end // Tire

@implementation Tire

- (NSString *) description {
    return (@"I am a tire. I last a while");
}

@end // Tire

@interface Engine : NSObject
@end // Engine

@implementation Engine

- (NSString *) description {
    return (@"I am an engine. Vroom!");
}

@end // Engine

@interface Car : NSObject {
    Engine *engine;
    Tire *tires[4];
}

- (void) print;

@end // Car

@implementation Car

- (id) init {
    if (self = [super init]) {
        engine = [Engine new];
        
        tires[0] = [Tire new];
        tires[1] = [Tire new];
        tires[2] = [Tire new];
        tires[3] = [Tire new];
    }
    
    return (self);
} // init

- (void) print {
    NSLog(@"%@", engine);
    
    NSLog(@"%@", tires[0]);
    NSLog(@"%@", tires[1]);
    NSLog(@"%@", tires[2]);
    NSLog(@"%@", tires[3]);
} // print

@end // Car


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car *car;
        
        car = [Car new];
        [car print];
    }
    
    return 0;
}
