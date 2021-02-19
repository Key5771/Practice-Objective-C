//
//  ViewController.m
//  CaseTool
//
//  Created by 김기현 on 2021/02/19.
//

#import "ViewController.h"
#import "ListTableViewCell.h"

#import "CaseTool-Swift.h"

@interface ViewController ()

@property (nonatomic) NSArray *array;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    _array = [NSArray arrayWithObjects: @"Apple", @"Banana", @"Car", @"Dog", nil];
    
    _myTableView.delegate = self;
    _myTableView.dataSource = self;
}

- (IBAction)addViewController:(id)sender {
    SecondViewController *vc = [[SecondViewController alloc] init];
    vc.passData = @"Hello Swift";
    
    [self.navigationController pushViewController:vc animated:YES];
}

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

@end
