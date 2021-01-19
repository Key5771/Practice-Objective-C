//
//  main.m
//  FoundationKitTest
//
//  Created by 김기현 on 2021/01/15.
//

#import <Foundation/Foundation.h>

//int main(int argc, const char * argv[]) {
//    @autoreleasepool {
//        NSMutableArray *array;
//        array = [NSMutableArray array];
//
//        NSMutableDictionary *dictionary;
//        dictionary = [NSMutableDictionary dictionary];
//
//        NSNumber *number;
//        number = [NSNumber numberWithInt: 42];
//        [array addObject: number];
//        [dictionary setObject: number forKey: @"Bork"];
//
//        NSLog(@"array is %@", array);
//        NSLog(@"dictionary is %@", dictionary);
//    }
//
//    return 0;
//}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSFileManager *manager;
        manager = [NSFileManager defaultManager];
        
        NSString *home;
        home = [@"~" stringByExpandingTildeInPath];
        
        NSMutableArray *files;
        files = [NSMutableArray arrayWithCapacity: 42];
        
        for (NSString *filename in [manager enumeratorAtPath: home]) {
            if ([[filename pathExtension] isEqual: @"jpg"]) {
                [files addObject: filename];
            }
        }
        
        for (NSString *filename in files) {
            NSLog(@"%@", filename);
        }
        
        NSLog(@"return");
    }
    return 0;
}
