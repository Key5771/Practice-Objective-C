//
//  CategoryThing.m
//  CategoryThing
//
//  Created by 김기현 on 2021/02/10.
//

#import <Foundation/Foundation.h>
#import "CategoryThing.h"

@implementation CategoryThing

- (NSString *) description {
    NSString *desc;
    desc = [NSString stringWithFormat: @"%d, %d, %d", thing1, thing2, thing3];
    
    return (desc);
}

@end
