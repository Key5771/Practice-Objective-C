//
//  SomeObject.m
//  WorkingWithObjects
//
//  Created by 김기현 on 2021/02/18.
//

#import "SomeObject.h"

#import "XYZPerson+XYZPersonNameDisplayAdditions.h"

@implementation SomeObject

- (void) someMethod {
    XYZPerson *person = [[XYZPerson alloc] initWithFirstName:@"John" lastName: @"Doe"];
    
    XYZShoutingPerson *shoutingPerson = [[XYZShoutingPerson alloc]
                                         initWithFirstName: @"Monica" lastName: @"Robinson"];
    
    NSLog(@"The two people are %@ and %@",
          [person lastNameFirstNameString], [shoutingPerson lastNameFirstNameString]);
}

@end
