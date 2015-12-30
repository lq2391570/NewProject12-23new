//
//  MyCell.h
//  NewProject12-23
//
//  Created by shiliuhua on 15/12/24.
//  Copyright © 2015年 shiliuhua. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *nameLabel;
@property (strong, nonatomic) IBOutlet UILabel *neirongLabel;
- (void)confihure:(UITableViewCell *)cell customObj:(id)obj indexPath:(NSIndexPath *)indexPath;
+ (CGFloat)getCellHeight:(id)obj;
@end
