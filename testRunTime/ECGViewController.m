//
//  ECGViewController.m
//  testRunTime
//
//  Created by hqs on 16/3/21.
//  Copyright © 2016年 hqs. All rights reserved.
//

#import "ECGViewController.h"
#import "ECGView.h"
#import "ECGModel.h"

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
    eView.timeLabel.text = @"2016-02-32 23:23:32";
    
    ECGModel *model = [[ECGModel alloc]init];
    model.testDuration = @"20分59秒";
    model.averHr = @"88次/分";
    model.maxHr = @"99次/分";
    model.minHr = @"69次/分";
    model.PVC = @"2次";
    model.SVES = @"19次";
    model.judgmentHeader = [UIImage imageNamed:@"indicator.png"];
    model.judgmentInfo = @"您的心脏很健康!!!!!偶像啊 !!!! 但也请您注意保存啊!!!! 但也请您注意保存啊!!! 但也请您注意保存啊!!!";
    
    eView.model = model;
    
    
    
    eView.backgroundColor = [UIColor clearColor ];
    eView.layer.cornerRadius = 4;
    eView.layer.borderColor = [UIColor lightGrayColor].CGColor;
    eView.layer.borderWidth = 1;
     
    
    [self.view addSubview:eView];
}

@end
