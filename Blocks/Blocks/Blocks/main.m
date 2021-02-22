//
//  main.m
//  Blocks
//
//  Created by 김기현 on 2021/02/22.
//

#import <Foundation/Foundation.h>

#import "BlockTest.h"

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
        
        
        NSLog(@"=========================================================================");
        NSLog(@"Integer is changed 42 to 84");
        
        BlockTest *blockTest = [[BlockTest alloc] init];
        [blockTest blockTest];
        [blockTest blockTest2]; // __block
    }
    return 0;
}
