//
//  XYZPerson.m
//  WorkingWithObjects
//
//  Created by 김기현 on 2021/02/15.
//

#import <Foundation/Foundation.h>
#import "XYZPerson.h"

@implementation XYZPerson

- (void) sayHello: (NSString *) name {
    [self saySomething: name];
} // sayHello

- (void) saySomething: (NSString *) greet {
    NSLog(@"%@", greet);
} // saySomething

- (int) maginNumber {
    return 42;
} // magicNumber

- (NSString *) magicString: (NSString *) input {
    return [input uppercaseString];
} // magicString

@end // XYZPerson
