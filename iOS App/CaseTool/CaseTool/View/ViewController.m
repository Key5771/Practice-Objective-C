//
//  ViewController.m
//  CaseTool
//
//  Created by 김기현 on 2021/02/19.
//

#import "ViewController.h"
#import "ListTableViewCell.h"

@interface ViewController ()

@property (nonatomic) NSMutableArray *array;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _array = [NSMutableArray arrayWithObjects: @"Apple", @"Banana", @"Car", @"Dog", nil];
    
    _myTableView.delegate = self;
    _myTableView.dataSource = self;
}

- (void)viewWillAppear:(BOOL)animated {
    NSLog(@"%@", _array);
}

- (IBAction)addViewController:(id)sender {
    SecondViewController *vc = [[SecondViewController alloc] init];
    vc.passData = @"Hello Swift";
    vc.delegate = self;
    
    [self.navigationController pushViewController:vc animated:YES];
}

#pragma mark - UITableViewDataSource
- (UITableViewCell *)tableView:(nonnull UITableView *)tableView cellForRowAtIndexPath:(nonnull NSIndexPath *)indexPath {
    static NSString *identifier = @"cell";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:identifier];
    
    if (cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:identifier];
    }
    
    cell.textLabel.text = [_array objectAtIndex:indexPath.row];
    
//    cell.testLabel.text = [_array objectAtIndex:indexPath.row];
    
    return cell;
//    let cell = dequeueReusableCell(
}

- (NSInteger)tableView:(nonnull UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return _array.count;
}

#pragma mark - PassDataDelegate
- (void) passDataWithStr:(NSString *) str {
    [_array addObject:str];
    
    [self.myTableView reloadData];
}

@end
