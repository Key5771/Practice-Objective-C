//
//  ViewController.h
//  CaseTool
//
//  Created by 김기현 on 2021/02/19.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDelegate, UITableViewDataSource>

#pragma mark - BarButtonItem
@property (weak, nonatomic) IBOutlet UIBarButtonItem *addItem;

#pragma mark - TableView
@property (weak, nonatomic) IBOutlet UITableView *myTableView;

@end

