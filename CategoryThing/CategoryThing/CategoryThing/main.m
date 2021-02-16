//
//  main.m
//  CategoryThing
//
//  Created by 김기현 on 2021/02/10.
//

#import <Foundation/Foundation.h>
//#import "CategoryThing.h"
#import "ITunesFinder.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
//        CategoryThing *thing;
//        thing = [[CategoryThing alloc] init];
//
//        [thing setThing1: 5];
//        [thing setThing2: 23];
//        [thing setThing3: 42];
//
//        NSLog(@"Things are %@", thing);
//
        
        NSNetServiceBrowser * browser;
        browser = [[NSNetServiceBrowser alloc] init];
        
        ITunesFinder * finder;
        finder = [[ITunesFinder alloc] init];
        
        [browser setDelegate: finder];
        
        [browser searchForServicesOfType: @"_daap._tcp"
                                inDomain: @"local."];
        
        NSLog(@"begun browsing");
        
        [[NSRunLoop currentRunLoop] run];
    }
    
    return 0;
}
