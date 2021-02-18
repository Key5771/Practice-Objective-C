//
//  XYZPerson+XYZPersonNameDisplayAdditions.m
//  WorkingWithObjects
//
//  Created by 김기현 on 2021/02/18.
//

#import "XYZPerson+XYZPersonNameDisplayAdditions.h"

@implementation XYZPerson (XYZPersonNameDisplayAdditions)

- (NSString *) lastNameFirstNameString {
    return [NSString stringWithFormat: @"%@, %@", self.lastName, self.firstName];
}

@end
