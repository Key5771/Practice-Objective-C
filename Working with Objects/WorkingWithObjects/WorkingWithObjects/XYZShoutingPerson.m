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

// MARK: - @synthesize를 통해 인스턴스 변수의 이름을 바꿔서 사용할 수 있음
@synthesize someString = synthesizeString;

- (void) someMethod {
    NSString * myString = @"An interesting string";
    
    // MARK: - 아래 3줄의 코드가 클래스에 선언된 someString 변수에 myString 값을 할당하는 방법
//    _someString = myString;
//    self.someString = myString;
//    [self setSomeString: myString];

    synthesizeString = myString;
    
    NSLog(@"someString: %@", self.someString);
}

- (void) saySomeThing: (NSString *) greet {
    NSString *uppercaseGreeting = [greet uppercaseString];
//    NSLog(@"%@", uppercaseGreeting);
    [super saySomething: uppercaseGreeting];
}

@end
