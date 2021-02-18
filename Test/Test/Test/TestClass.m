//
//  TestClass.m
//  Test
//
//  Created by 김기현 on 2021/02/18.
//

#import "TestClass.h"

@interface TestClass()

@property NSString * someString;

@end

@implementation TestClass

- (void) someMethod {
    NSString * myString = @"An interesting string";
    
    _interfaceString = myString;
    _someString = [NSString stringWithFormat: @"%@ %@", myString, myString];
    
    NSLog(@"interfaceString: %@", _interfaceString);
    NSLog(@"=========================");
    NSLog(@"someString: %@", _someString);
}

@end
