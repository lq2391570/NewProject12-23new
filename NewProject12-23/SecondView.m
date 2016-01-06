//
//  SecondView.m
//  NewProject12-23
//
//  Created by shiliuhua on 16/1/4.
//  Copyright © 2016年 shiliuhua. All rights reserved.
//

#import "SecondView.h"
#import "UIButton+WebCache.h"

@implementation SecondView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/
- (id)initWithFrame:(CGRect)frame
{
    self=[super initWithFrame:frame];
    if (self) {
        _srcStringArray = @[@"http://ww2.sinaimg.cn/thumbnail/904c2a35jw1emu3ec7kf8j20c10epjsn.jpg",
                            @"http://ww2.sinaimg.cn/thumbnail/98719e4agw1e5j49zmf21j20c80c8mxi.jpg",
                            @"http://ww2.sinaimg.cn/thumbnail/67307b53jw1epqq3bmwr6j20c80axmy5.jpg",
                            @"http://ww2.sinaimg.cn/thumbnail/9ecab84ejw1emgd5nd6eaj20c80c8q4a.jpg",
                            @"http://ww2.sinaimg.cn/thumbnail/642beb18gw1ep3629gfm0g206o050b2a.gif",
                            @"http://ww1.sinaimg.cn/thumbnail/9be2329dgw1etlyb1yu49j20c82p6qc1.jpg",
                            @"http://ww2.sinaimg.cn/thumbnail/9ecab84ejw1emgd5nd6eaj20c80c8q4a.jpg",
                            @"http://ww2.sinaimg.cn/thumbnail/642beb18gw1ep3629gfm0g206o050b2a.gif"
                            ];
        
        for (int i=0; i<8; i++) {
            int hang=i/3;
            int lie=i%3;
            UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
            [btn setFrame:CGRectMake(10+70*hang,164+90*lie, 60, 60)];
            [btn sd_setBackgroundImageWithURL:[NSURL URLWithString:_srcStringArray[i]] forState:UIControlStateNormal placeholderImage:[UIImage imageNamed:@"68981b359260e9a1b17104c6cb4f6379.jpg"]];
            [btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
            btn.tag=i;
            [self addSubview:btn];
        }

        
    }
    return self;
}
- (void)btnClick:(UIButton *)btn
{
    SDPhotoBrowser *browser = [[SDPhotoBrowser alloc] init];
    browser.sourceImagesContainerView = self; // 原图的父控件
    browser.imageCount = _srcStringArray.count; // 图片总数
    browser.currentImageIndex = btn.tag;
    browser.delegate = self;
    [browser show];

}
// 返回临时占位图片（即原来的小图）
- (UIImage *)photoBrowser:(SDPhotoBrowser *)browser placeholderImageForIndex:(NSInteger)index
{
    return [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:_srcStringArray[index]]]];
}


// 返回高质量图片的url
- (NSURL *)photoBrowser:(SDPhotoBrowser *)browser highQualityImageURLForIndex:(NSInteger)index
{
    NSString *urlStr = [_srcStringArray[index] stringByReplacingOccurrencesOfString:@"thumbnail" withString:@"bmiddle"];
    return [NSURL URLWithString:urlStr];
}

@end
