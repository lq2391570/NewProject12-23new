//
//  MyCell.m
//  NewProject12-23
//
//  Created by shiliuhua on 15/12/24.
//  Copyright © 2015年 shiliuhua. All rights reserved.
//

#import "MyCell.h"
#import "MyObj.h"
@implementation MyCell
/**
 *  cell
 */
- (void)awakeFromNib {
    // Initialization code
}
- (void)confihure:(UITableViewCell *)cell customObj:(id)obj indexPath:(NSIndexPath *)indexPath
{
    MyObj *myObj=(MyObj *)obj;
    MyCell *mycell=(MyCell *)cell;
    mycell.nameLabel.text=myObj.name;
    mycell.neirongLabel.text=[NSString stringWithFormat:@"My Height is:%@",@(myObj.height)];
}
+ (CGFloat)getCellHeight:(id)obj
{
    NSLog(@"Mycell方法");
    MyObj *myobj=(MyObj *)obj;
    CGFloat height=myobj.height;
    return height;
}
- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
   
    // Configure the view for the selected state
}

@end
