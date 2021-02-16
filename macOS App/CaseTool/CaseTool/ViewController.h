//
//  ViewController.h
//  CaseTool
//
//  Created by 김기현 on 2021/02/16.
//

#import <Cocoa/Cocoa.h>

@interface ViewController : NSViewController {
    __weak IBOutlet NSTextField *textField;
    __weak IBOutlet NSTextField *resultLabel;
}

- (IBAction) uppercase: (id) sender;
- (IBAction) lowercase: (id) sender;
- (IBAction) close: (id) sender;

@end // ViewController

