//
//  XYZPerson.m
//  WorkingWithObjects
//
//  Created by 김기현 on 2021/02/15.
//

#import <Foundation/Foundation.h>
#import "XYZPerson.h"

@implementation XYZPerson

- (id) initWithFirstName: (NSString *) aFirstName lastName: (NSString *) aLastNamme {
    self = [super self];
    
    if (self) {
        _firstName = aFirstName;
        _lastName = aLastNamme;
    }
    
    return self;
}

- (id) initWithFirstName: (NSString *) aFirstName
                lastName: (NSString *) aLastName
             dateOfBirth: (NSDate *) aDOB {
    self = [super init];
    
    if (self) {
        _firstName = aFirstName;
        _lastName = aLastName;
    }
    
    return self;
}

- (id) init {
    return [self initWithFirstName: @"John" lastName: @"Doe" dateOfBirth: nil];
}

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
