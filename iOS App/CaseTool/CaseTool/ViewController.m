//
//  ViewController.m
//  CaseTool
//
//  Created by 김기현 on 2021/02/19.
//

#import "ViewController.h"
#import "CaseTool-Swift.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.testLabel.text = @"Objective-C";
}

- (IBAction)addViewController:(id)sender {
    SecondViewController *vc = [[SecondViewController alloc] init];
    vc.passData = @"Hello Swift";
    
    [self.navigationController pushViewController:vc animated:YES];
}

@end
