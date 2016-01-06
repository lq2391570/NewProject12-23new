//
//  SecondView.h
//  NewProject12-23
//
//  Created by shiliuhua on 16/1/4.
//  Copyright © 2016年 shiliuhua. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SDPhotoBrowser.h"
@interface SecondView : UIView<SDPhotoBrowserDelegate>
@property (nonatomic,strong)NSArray *srcStringArray;
@end
