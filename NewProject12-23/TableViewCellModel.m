//
//  TableViewCellModel.m
//  NewProject12-23
//
//  Created by shiliuhua on 15/12/24.
//  Copyright © 2015年 shiliuhua. All rights reserved.
//

#import "TableViewCellModel.h"
#import "UITableViewCell+Extension.h"



@interface TableViewCellModel ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong)NSArray *items;
@property (nonatomic,strong)NSString *cellIdentifier;
@property (nonatomic,strong)TableViewCellConfigureBlock tableViewCellConfigureBlock;
@property (nonatomic,strong)CellHeightBlock cellHeightblock;
@property (nonatomic,strong)selectBlock selectBlock;

@end


@implementation TableViewCellModel

- (instancetype)initWithItems:(NSArray *)Items cellIdentifier:(NSString *)acellIdentifier configureCellBlock:(TableViewCellConfigureBlock)configure cellHeightBlock:(CellHeightBlock)acellHeighBlock selectBlock:(selectBlock)aselectBlock
{
    self=[super init];
    if (self) {
        self.items=Items;
        self.cellIdentifier=acellIdentifier;
        self.tableViewCellConfigureBlock=configure;
        self.cellHeightblock=acellHeighBlock;
        self.selectBlock=aselectBlock;
        
    }
    return self;
}
- (void)handleTableViewDatasourceAndDelegate:(UITableView *)tableView
{
    tableView.delegate=self;
    tableView.dataSource=self;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    id item=[self itemAtIndexPath:indexPath];
    NSLog(@"tableViewModel方法");
    return self.cellHeightblock(indexPath,item);
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.items.count;
}
- (id)itemAtIndexPath:(NSIndexPath *)indexPath
{
    return self.items[indexPath.row];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    id item=[self itemAtIndexPath:indexPath];
    UITableViewCell *cell=[tableView dequeueReusableCellWithIdentifier:self.cellIdentifier];
    if (!cell) {
        [UITableViewCell registerTable:tableView nibIdentifier:self.cellIdentifier];
        cell=[tableView dequeueReusableCellWithIdentifier:self.cellIdentifier];
    }
    self.tableViewCellConfigureBlock(indexPath,item,cell);
    return cell;
    
    
}
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
     id item=[self itemAtIndexPath:indexPath];
     self.selectBlock(indexPath,item);
}
@end
