//
//  Engine.m
//  Protocol
//
//  Created by 김기현 on 2021/02/16.
//

#import <Foundation/Foundation.h>
#import "Engine.h"

@implementation Engine

- (id) copyWithZone: (NSZone *) zone {
    Engine * engineCopy;
    engineCopy = [[[self class] allocWithZone: zone] init];
    
    return engineCopy;
}

- (NSString *) description {
    return @"I am an engine. Vroom!";
} // description

@end // Engine
