//
//  AppleViewController.m
//  CaseTool
//
//  Created by 김기현 on 2021/02/19.
//

#import "AppleViewController.h"

@interface AppleViewController () <WKNavigationDelegate>

@end

@implementation AppleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
//    self.appleView = [[WKWebView alloc] initWithFrame:self.view.frame];
    [self.appleView setNavigationDelegate:self];
//    [self.view addSubview:self.appleView];
    
    NSURLRequest *request = [[NSURLRequest alloc] initWithURL:[NSURL URLWithString:@"https://www.apple.co.kr"]];
    [self.appleView loadRequest:request];
}

@end
