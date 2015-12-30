//
//  ViewController.m
//  NewProject12-23
//
//  Created by shiliuhua on 15/12/23.
//  Copyright © 2015年 shiliuhua. All rights reserved.
//

#import "ViewController.h"

#import "ReactiveCocoa.h"
#import "TKit.h"
#import "SecondVC.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.title=@"first";
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    [btn setFrame:CGRectMake(0, 0, 100, 100)];
    [btn setBackgroundColor:[UIColor redColor]];
    
    [btn addTarget:self action:@selector(btnClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
   
    
}
- (void)btnClick
{
    SecondVC *vc=[[SecondVC alloc] init];
    [self.navigationController pushViewController:vc animated:YES];
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
