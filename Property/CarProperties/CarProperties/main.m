//
//  main.m
//  CarProperties
//
//  Created by 김기현 on 2021/02/04.
//

#import <Foundation/Foundation.h>
#import "Tire.h"
#import "Engine.h"
#import "Car.h"
#import "Slant6.h"
#import "AllWeatherRadial.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car *car = [[Car alloc] init];
        
        int i;
        for (i = 0; i < 4; i++) {
            AllWeatherRadial *tire;
            
            tire = [[AllWeatherRadial alloc] init];
            [tire setRainHandling: 20 + i];
            [tire setSnowHandling: 28 + i];
            NSLog(@"the tire's handling is %.f %.f", [tire rainHandling], [tire snowHandling]);
            
            [car setTire: tire atIndex: i];
        }
        
        Engine *engine = [[Slant6 alloc] init];
        [car setEngine: engine];
        
        [car print];
    }
    
    return 0;
}
