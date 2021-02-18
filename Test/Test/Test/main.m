//
//  main.m
//  Test
//
//  Created by 김기현 on 2021/02/18.
//

#import <Foundation/Foundation.h>
#import "TestClass.h"

#import "Test-Swift.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        TestClass * test = [[TestClass alloc] init];
        test.someMethod;
        
        test.interfaceString = @"Change";
        NSLog(@"interfaceString: %@", test.interfaceString);
        
        SwiftTest *swiftTest = [[SwiftTest alloc] init];
        [swiftTest say];
        [swiftTest sayHello];
        NSLog(@"====================");
        
        [swiftTest swiftVersionCheck];
    }
    return 0;
}
