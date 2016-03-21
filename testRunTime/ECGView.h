//
//  ECGView.h
//  testRunTime
//
//  Created by hqs on 16/3/21.
//  Copyright © 2016年 hqs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ECGView : UIView
 
@property (nonatomic,strong,readonly) UILabel *timeLabel;

@property (nonatomic,strong) UIView *healthStatusView;

@property (nonatomic,strong) NSDictionary *baseInfo;


@end
