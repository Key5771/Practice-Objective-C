//
//  BlockTest.m
//  Blocks
//
//  Created by 김기현 on 2021/02/22.
//

#import "BlockTest.h"

@implementation BlockTest

- (void)blockTest {
    int anInteger = 42;
    
    void (^testBlock)(void) = ^ {
        NSLog(@"Integer is: %i", anInteger);
    };
    
    testBlock();
}

@end
