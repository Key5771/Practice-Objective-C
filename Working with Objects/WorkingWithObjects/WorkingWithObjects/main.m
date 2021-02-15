//
//  main.m
//  WorkingWithObjects
//
//  Created by 김기현 on 2021/02/15.
//

#import <Foundation/Foundation.h>
#import "XYZPerson.h"
#import "XYZShoutingPerson.h"

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
        XYZPerson * somePerson;
        somePerson = [[XYZPerson alloc] init];
        
        somePerson.firstName = @"johnny";
        NSString * firstName = somePerson.firstName;
        
        NSLog(@"firstName: %@", firstName);
        
        XYZShoutingPerson * someShoutingPerson;
        someShoutingPerson = [[XYZShoutingPerson alloc] init];
        
        [someShoutingPerson someMethod];
    }
    return 0;
}
