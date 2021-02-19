//
//  AppleViewController.h
//  CaseTool
//
//  Created by 김기현 on 2021/02/19.
//

#import <UIKit/UIKit.h>
#import <WebKit/WebKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface AppleViewController : UIViewController

@property (nonatomic) IBOutlet WKWebView *appleView;

@end

NS_ASSUME_NONNULL_END
