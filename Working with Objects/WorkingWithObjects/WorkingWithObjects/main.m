//
//  main.m
//  WorkingWithObjects
//
//  Created by 김기현 on 2021/02/15.
//

#import <Foundation/Foundation.h>
#import "XYZPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        XYZPerson *somePerson;
        somePerson = [[XYZPerson alloc] init];
        
        [somePerson sayHello: @"key"];
        
        int resultNumber = [somePerson maginNumber];
        NSLog(@"resultNumber: %d", resultNumber);
    }
    return 0;
}
