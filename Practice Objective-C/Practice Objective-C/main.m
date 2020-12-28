//
//  main.m
//  Practice Objective-C
//
//  Created by 김기현 on 2020/12/28.
//

#import <Foundation/Foundation.h>

// return NO if the two integers have the same
// value, YES otherwise

// BOOL areIntsDifferent (int thing1, int thing2)
BOOL areIntsDifferent(int thing1, int thing2) {
    if (thing1 == thing2) {
        return (NO);
    } else {
        return (YES);
    }
}

NSString *boolString (BOOL yesNo) {
    if (yesNo == NO) {
        return (@"NO");
    } else {
        return (@"YES");
    }
}

int main(int argc, const char *argv[]) {
    BOOL areTheyDifferent;
    
    areTheyDifferent = areIntsDifferent(5, 5);
    NSLog(@"are %d and %d different? %@", 5, 5, boolString(areTheyDifferent));
    
    areTheyDifferent = areIntsDifferent(23, 42);
    NSLog(@"are %d and %d different? %@", 23, 42, boolString(areTheyDifferent));
    
    return 0;
}
