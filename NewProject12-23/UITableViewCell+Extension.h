//
//  UITableViewCell+Extension.h
//  NewProject12-23
//
//  Created by shiliuhua on 15/12/24.
//  Copyright © 2015年 shiliuhua. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITableViewCell (Extension)
+ (UINib *)nibWithIdentifier:(NSString *)identifier;
+ (void)registerTable:(UITableView *)table nibIdentifier:(NSString *)identifier;
//- (void)confihure:(UITableViewCell *)cell customObj:(id)obj indexPath:(NSIndexPath *)indexPath;
@end
