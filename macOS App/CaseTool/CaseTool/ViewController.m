//
//  ViewController.m
//  CaseTool
//
//  Created by 김기현 on 2021/02/16.
//

#import "ViewController.h"

@implementation ViewController

- (id) init {
    if (self = [super init]) {
        NSLog(@"init: text %@ / results %@", textField, resultLabel);
    }
    
    return self;
} // init

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view.
} // viewDidLoad

- (IBAction) uppercase: (id) sender {
    NSString * original;
    original = [textField stringValue];
    
    NSString * uppercase;
    uppercase = [original uppercaseString];
    
    [resultLabel setStringValue: uppercase];
} // uppercase

- (IBAction) lowercase: (id) sender {
    NSString * original;
    original = [textField stringValue];
    
    NSString * lowercase;
    lowercase = [original lowercaseString];
    
    [resultLabel setStringValue: lowercase];
} // lowercase

- (IBAction) close:(id)sender {
    [NSApp terminate: self];
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
