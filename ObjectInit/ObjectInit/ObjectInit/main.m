//
//  main.m
//  ObjectInit
//
//  Created by 김기현 on 2021/01/20.
//

#import <Foundation/Foundation.h>
#import <Cocoa/Cocoa.h>

#import "Engine.h"
#import "Car.h"
#import "Slant6.h"
#import "AllWeatherRadial.h"

// 초기화 : 일정 메모리를 얻어와 객체 단체에 있어서 생산적인 멤버로 준비시킴.
// 초기화를 실행하는 init 메소드는 거의 항상 초기화된 객체를 반환
// init 메소드는 객체를 초기화할 때 문제가 발생하면 nil을 반환


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Car *car = [[Car alloc] init];
        
        int i;
        for (i = 0; i < 4; i++) {
            Tire *tire;
            // 기존 방식(init)
//            tire = [[Tire alloc] init];
//
//            [tire setPressure: 23 + i];
//            [tire setTreadDepth: 33 - i];
            
            // 새로운 방식(initWithPressure:treadDepth)
            tire = [[Tire alloc] initWithPressure: 23 + i treadDepth: 33 - i];
            
            [car setTire: tire atIndex: i];
        }
        
        Engine *engine = [[Slant6 alloc] init];
        
        [car setEngine: engine];
        
        [car print];
        
    }
    return 0;
}
