//
//  ECGView.h
//  testRunTime
//
//  Created by hqs on 16/3/21.
//  Copyright © 2016年 hqs. All rights reserved.
//

#import <UIKit/UIKit.h>

@class ECGModel;

@interface ECGView : UIView
 
@property (nonatomic,strong,readonly) UILabel *timeLabel;

@property (nonatomic,strong,readonly) UIView *baseInfoView;
@property (nonatomic,strong,readonly) UIView *judgmentInfoView;

@property (nonatomic,strong,readonly) UIImageView*imgView;

@property (nonatomic,strong,readonly) UILabel *judgmentInfoLabel;



@property (nonatomic,strong) UIView *healthStatusView;

@property (nonatomic,strong) ECGModel *model;


@end
