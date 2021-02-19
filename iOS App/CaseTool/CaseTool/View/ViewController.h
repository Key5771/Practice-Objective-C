//
//  ViewController.h
//  CaseTool
//
//  Created by 김기현 on 2021/02/19.
//

#import <UIKit/UIKit.h>
#import "CaseTool-Swift.h"

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource, PassDataDelegate>

#pragma mark - BarButtonItem
@property (weak, nonatomic) IBOutlet UIBarButtonItem *addItem;

#pragma mark - TableView
@property (weak, nonatomic) IBOutlet UITableView *myTableView;

@end

