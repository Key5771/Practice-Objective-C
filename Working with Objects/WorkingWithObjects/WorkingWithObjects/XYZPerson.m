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
    NSLog(@"Hello, %@", name);
} // sayHello

- (int) maginNumber {
    return 42;
} // magicNumber

@end // XYZPerson
