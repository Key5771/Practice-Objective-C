//
//  main.m
//  Protocol
//
//  Created by 김기현 on 2021/02/16.
//

#import <Foundation/Foundation.h>

#import "Tire.h"
#import "AllWeatherRadial.h"
#import "Engine.h"
#import "Slant6.h"
#import "Car.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car * car = [[Car alloc] init];
        car.name = @"Herbie";
        
        int i;
        for (i = 0; i < 4; i++) {
            AllWeatherRadial * tire;
            tire = [[AllWeatherRadial alloc] init];
            
            tire.rainHandling = 20 + i;
            tire.snowHandling = 28 + i;
            
            NSLog(@"the tire's handling is %.f %.f", tire.rainHandling, tire.snowHandling);
            
            [car setTire: tire atIndex: i];
        }
        
        car.engine = [[Slant6 alloc] init];
        
        [car print];
        
        Car * carCopy = [car copy];
        [carCopy print];
        
    }
    return 0;
}
