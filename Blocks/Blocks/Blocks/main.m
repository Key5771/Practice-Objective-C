//
//  main.m
//  Blocks
//
//  Created by 김기현 on 2021/02/22.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        void (^simpleBlock)(void);
        
        simpleBlock = ^ {
            NSLog(@"This is Block");
        };
        
        simpleBlock();
        
        double (^multiplyTwoValue)(double, double) = ^ (double firstValue, double secondValue) {
            return firstValue * secondValue;
        };
        
        double x = 2;
        double y = 5;
        
        NSLog(@"%f X %f = %f", x, y, multiplyTwoValue(x, y));
    }
    return 0;
}
