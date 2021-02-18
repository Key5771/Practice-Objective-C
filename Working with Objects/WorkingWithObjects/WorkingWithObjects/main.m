//
//  main.m
//  WorkingWithObjects
//
//  Created by 김기현 on 2021/02/15.
//

#import <Foundation/Foundation.h>
//#import "XYZPerson.h"
//#import "XYZShoutingPerson.h"
#import "SomeObject.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        XYZPerson *somePerson;
//        somePerson = [[XYZPerson alloc] init];
//
//        [somePerson sayHello: @"key"];
//
//        int resultNumber = [somePerson maginNumber];
//        NSLog(@"resultNumber: %d", resultNumber);
//
//        NSString *testString = @"Hello, World";
//        NSString *revisedString = [somePerson magicString: testString];
//
//        NSLog(@"testString : %@", testString);
//        NSLog(@"revisedString : %@", revisedString);
//
//        XYZShoutingPerson *someShoutingPerson;
//        someShoutingPerson = [[XYZShoutingPerson alloc] init];
//
//        [someShoutingPerson sayHello: @"Hello, Shouting Person"];
        
        // MARK: - Propery 사용
//        XYZPerson * somePerson;
//        somePerson = [[XYZPerson alloc] init];
//
//        [somePerson setFirstName: @"johnny"];
//        NSString * firstName = [somePerson firstName];
//
//        NSLog(@"%@", firstName);
        
        // MARK: - Dot Syntax
//        XYZPerson * somePerson;
//        somePerson = [[XYZPerson alloc] initWithFirstName: @"kihyun" lastName: @"Kim" dateOfBirth: nil];
//
//        somePerson.firstName = @"johnny";
//        NSString * firstName = somePerson.firstName;
//        NSString * lastName = somePerson.lastName;
//        NSString * fullName = somePerson.fullName;
//
//        NSLog(@"firstName: %@", firstName);
//        NSLog(@"lastName: %@", lastName);
//        NSLog(@"fullName: %@", fullName);
        
//        XYZShoutingPerson * someShoutingPerson;
//        someShoutingPerson = [[XYZShoutingPerson alloc] init];
//
//        [someShoutingPerson someMethod];
        
        // MARK: - define weak variable example
        // NSObject * __weak someObject = [[NSObject alloc] init];
        // weak reference에 여러번 엑세스 해야하는 상황에는 weak reference를 strong variable에 캐시하여 사용
        // ex)
        // - (void) someMethod {
        //     NSObject * cachedObject = self.weakProperty;
        //     [cachedObject doSomething];
        //     [cachedObject doSomethingElse];
        // }
        
        // MARK: ARC Ownership
        // variable: __strong, property: (strong)
        // variable: __unsafe_unretained, property: (unsafe_unretained)
        // variable: __weak, property: (weak)
        // variable: __autoreleasing, property: (autoreleasing)
        
        
        
        // MARK: - Category Test
        
        SomeObject *someObject = [[SomeObject alloc] init];
        [someObject someMethod];
        
    }
    return 0;
}
