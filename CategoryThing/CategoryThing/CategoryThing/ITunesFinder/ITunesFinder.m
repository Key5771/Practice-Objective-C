//
//  ITunesFinder.m
//  CategoryThing
//
//  Created by 김기현 on 2021/02/16.
//

#import <Foundation/Foundation.h>
#import "ITunesFinder.h"

@implementation ITunesFinder

- (void) netServiceBrowser: (NSNetServiceBrowser *) b
            didFindService: (NSNetService *) service
                moreComing: (BOOL) moreComing {
    [service resolveWithTimeout: 10];
    
    NSLog(@"found one! Name is %@", [service name]);
} // didFindService

@end // ItunesFinder
