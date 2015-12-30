//
//  SecondVC.m
//  NewProject12-23
//
//  Created by shiliuhua on 15/12/24.
//  Copyright © 2015年 shiliuhua. All rights reserved.
//

#import "SecondVC.h"
#import "TableViewCellModel.h"
#import "MyObj.h"
#import "MyCell.h"
#import "Canvas.h"
static NSString *const MyCellIdentifier = @"MyCell" ; // `cellIdentifier` AND `NibName` HAS TO BE SAME !


@interface SecondVC ()
@property (nonatomic,strong)NSMutableArray *list;
@property (nonatomic,strong)TableViewCellModel *tableHander;


@end

@implementation SecondVC
- (NSMutableArray *)list
{
    if (!_list) {
        _list = [NSMutableArray array] ;
        
        for (int i = 0; i < 10; i++)
        {
            MyObj *obj = [[MyObj alloc] init] ;
            obj.name = [NSString stringWithFormat:@"my name is : %d",i] ;
            obj.height = 50 + i * 5 ;
            [_list addObject:obj] ;
        }
    }
    
    return _list ;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self setUpTableView];
}
- (void)setUpTableView
{
    TableViewCellConfigureBlock configure=^(NSIndexPath *indexPath,MyObj *obj,UITableViewCell *cell){
        MyCell *mycell=(MyCell *)cell;
        [mycell confihure:cell customObj:obj indexPath:indexPath];
    };
    CellHeightBlock heightBlock=^(NSIndexPath *indexPath,MyObj *obj){
        NSLog(@"secondVC方法");
        return  [MyCell getCellHeight:obj];
    };
    selectBlock selectBlock=^(NSIndexPath *indexPath,id item){
        [self.view startCanvasAnimation];
    };
    self.tableHander=[[TableViewCellModel alloc] initWithItems:[self list] cellIdentifier:MyCellIdentifier configureCellBlock:configure cellHeightBlock:heightBlock selectBlock:selectBlock];
    
    [self.tableHander handleTableViewDatasourceAndDelegate:self.tableView];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
