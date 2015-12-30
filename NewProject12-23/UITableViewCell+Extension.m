//
//  UITableViewCell+Extension.m
//  NewProject12-23
//
//  Created by shiliuhua on 15/12/24.
//  Copyright © 2015年 shiliuhua. All rights reserved.
//

#import "UITableViewCell+Extension.h"

@implementation UITableViewCell (Extension)
+ (UINib *)nibWithIdentifier:(NSString *)identifier
{
    return [UINib nibWithNibName:identifier bundle:nil];
}
+ (void)registerTable:(UITableView *)table nibIdentifier:(NSString *)identifier
{
    [table registerNib:[self nibWithIdentifier:identifier] forCellReuseIdentifier:identifier];
}
//- (void)confihure:(UITableViewCell *)cell customObj:(id)obj indexPath:(NSIndexPath *)indexPath
//{
//    // Rewrite this func in SubClass !
//    
//}


@end
