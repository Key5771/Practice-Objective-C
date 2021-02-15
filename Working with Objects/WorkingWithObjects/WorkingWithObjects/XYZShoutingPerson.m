//
//  XYZShoutingPerson.m
//  WorkingWithObjects
//
//  Created by 김기현 on 2021/02/15.
//

#import <Foundation/Foundation.h>
#import "XYZPerson.h"
#import "XYZShoutingPerson.h"

@implementation XYZShoutingPerson

- (void) saySomeThing: (NSString *) greet {
    NSString *uppercaseGreeting = [greet uppercaseString];
//    NSLog(@"%@", uppercaseGreeting);
    [super saySomething: uppercaseGreeting];
}

@end
