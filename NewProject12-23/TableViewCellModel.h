//
//  TableViewCellModel.h
//  NewProject12-23
//
//  Created by shiliuhua on 15/12/24.
//  Copyright © 2015年 shiliuhua. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void (^TableViewCellConfigureBlock)(NSIndexPath *indexPath,id item,UITableViewCell *cell);
typedef CGFloat (^CellHeightBlock)(NSIndexPath *indexPath,id item);
typedef void (^selectBlock)(NSIndexPath *indexPath,id item);

@interface TableViewCellModel : NSObject
- (void)handleTableViewDatasourceAndDelegate:(UITableView *)tableView;

- (instancetype)initWithItems:(NSArray *)Items cellIdentifier:(NSString *)acellIdentifier configureCellBlock:(TableViewCellConfigureBlock)configure cellHeightBlock:(CellHeightBlock)acellHeighBlock selectBlock:(selectBlock)aselectBlock;
@end
