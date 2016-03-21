//
//  ECGView.m
//  testRunTime
//
//  Created by hqs on 16/3/21.
//  Copyright © 2016年 hqs. All rights reserved.
//

#import "ECGView.h"

@interface ECGView()

@property (nonatomic,strong) UIView *baseInfoView;
@property (nonatomic,strong) UIView *judgmentInfoView;

@end

@implementation ECGView{
    CGFloat paddingTop;
    CGFloat padding;
    CGFloat fontSize;
    NSMutableArray *baseInfoLabels;
}

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        paddingTop = 15;
        padding = 10;
        fontSize = 12;
        [self setup];
    }
    return self;
}


- (void)setup{
    CGFloat y = paddingTop;
    CGFloat w = self.frame.size.width;
    CGFloat h = fontSize + padding;
    _timeLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, y, w, h)];
    _timeLabel.textAlignment = NSTextAlignmentCenter;
    _timeLabel.textColor = [UIColor darkGrayColor ];
    _timeLabel.font = [UIFont systemFontOfSize:fontSize];
    [self addSubview:_timeLabel];
    
    
    y = y + h + padding;
    w = self.frame.size.width - 2 * padding;
    h = w * 0.5;
    _healthStatusView = [[UIView alloc]initWithFrame:CGRectMake(padding, y, w, h)];
    _healthStatusView.backgroundColor = [UIColor yellowColor];
    [self addSubview:_healthStatusView];
    
    y = y + h + padding;
    h = w;
    _baseInfoView = [[UIView alloc]initWithFrame:CGRectMake(padding, y, w, h)];
    _baseInfoView.backgroundColor = [UIColor grayColor];
    [self addSubview:_baseInfoView];
    
    CGFloat p = 8;
    CGFloat x = p;
    y = 0;
    w = _baseInfoView.frame.size.width - 2 * p;
    h = fontSize + p * 2;
    
    UILabel *nameLabel = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    nameLabel.textColor = [UIColor lightGrayColor];
    nameLabel.text = @"基本信息";
    nameLabel.font = [UIFont systemFontOfSize:fontSize];
    [_baseInfoView addSubview:nameLabel];
    
    
    baseInfoLabels = [[NSMutableArray alloc]init];
    
    int count = 6;
    w = w * 0.5;
    for (int i = 0; i<count; i++) {
        x = i % 2 == 0 ? p : p + w;
        y = h * ((int) i / 2 + 1);
        
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
        label.textColor = [UIColor grayColor];
        label.text = [NSString stringWithFormat:@"%d",i];
        label.font = [UIFont systemFontOfSize:fontSize];
        label.backgroundColor = [[UIColor blueColor] colorWithAlphaComponent:i/6.0f];
        
        [_baseInfoView addSubview:label];
        [baseInfoLabels addObject:label];
    }
    
    CGRect frame = _baseInfoView.frame;
    frame.size.height = [baseInfoLabels[count - 1] frame].origin.y + h + p;
    _baseInfoView.frame = frame;
    
    y =  CGRectGetMaxY(_baseInfoView.frame) + padding;
    x = padding;
    w = _baseInfoView.frame.size.width;
    h = 60;
    _judgmentInfoView = [[UIView alloc]initWithFrame:CGRectMake(x, y, w, h)];
    _judgmentInfoView.backgroundColor = [UIColor redColor ];
    [self addSubview:_judgmentInfoView];
    
}

@end
