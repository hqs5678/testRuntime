//
//  ECGViewController.m
//  testRunTime
//
//  Created by hqs on 16/3/21.
//  Copyright © 2016年 hqs. All rights reserved.
//

#import "ECGViewController.h"
#import "ECGView.h"

@implementation ECGViewController

- (void)viewDidLoad{
    [super viewDidLoad];
    self.title = @"心电随身贴";
    self.view.backgroundColor = [UIColor whiteColor];
    
    
    [self setup];
}

- (void)setup{
    CGFloat x = 20;
    CGFloat  y = 40;
    CGFloat w = self.view.frame.size.width - x * 2;
    CGFloat h = 400;
    
    ECGView *eView  = [[ECGView alloc]initWithFrame:CGRectMake(x, y, w, h )];
    eView.backgroundColor = [[UIColor blueColor] colorWithAlphaComponent:0.4];
    eView.timeLabel.text = @"2016-02-32 23:23:32";
    [self.view addSubview:eView];
}

@end
