//
//  ECGView.m
//  testRunTime
//
//  Created by hqs on 16/3/21.
//  Copyright © 2016年 hqs. All rights reserved.
//

#import "ECGView.h"

#import "ECGModel.h"

@interface ECGView()

@end

@implementation ECGView{
    CGFloat paddingTop;
    CGFloat padding;
    CGFloat fontSize;
    CGFloat radius;
    UIColor *borderColor;
    NSMutableArray *baseInfoLabels;
}

- (instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    if (self) {
        paddingTop = 15;
        padding = 10;
        fontSize = 12;
        radius = 4;
        borderColor = [UIColor darkGrayColor];
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
    _healthStatusView.backgroundColor = [UIColor clearColor];
    _healthStatusView.layer.borderColor = borderColor.CGColor;
    _healthStatusView.layer.borderWidth = 1;
    _healthStatusView.layer.cornerRadius = radius;
    [self addSubview:_healthStatusView];
    
    y = y + h + padding;
    h = w;
    _baseInfoView = [[UIView alloc]initWithFrame:CGRectMake(padding, y, w, h)];
    _baseInfoView.backgroundColor = [UIColor clearColor];
    [self addSubview:_baseInfoView];
    
    CGFloat p = 8;
    CGFloat x = p;
    y = 0;
    w = _baseInfoView.frame.size.width - 2 * p;
    h = fontSize + p * 2;
    
    UILabel *nameLabel = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    nameLabel.text = @"基本信息";
    nameLabel.font = [UIFont systemFontOfSize:fontSize];
    [_baseInfoView addSubview:nameLabel];
    _baseInfoView.layer.cornerRadius = radius;
    _baseInfoView.layer.borderWidth = 1;
    _baseInfoView.layer.borderColor = borderColor.CGColor;
    
    baseInfoLabels = [[NSMutableArray alloc]init];
    
    int count = 6;
    w = w * 0.5;
    for (int i = 0; i<count; i++) {
        x = i % 2 == 0 ? p : p + w;
        y = h * ((int) i / 2 + 1);
        
        UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
        label.textColor = [UIColor darkGrayColor];
        label.text = [NSString stringWithFormat:@"%d",i];
        label.font = [UIFont systemFontOfSize:fontSize];
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
    _judgmentInfoView.backgroundColor = [UIColor clearColor ];
    _judgmentInfoView.layer.cornerRadius = radius;
    _judgmentInfoView.layer.borderColor = borderColor.CGColor;
    _judgmentInfoView.layer.borderWidth = 1;
    
    [self addSubview:_judgmentInfoView];
    
    x = p;
    y = p;
    h = _judgmentInfoView.frame.size.height - y * 2;
    w = h;
    _imgView = [[UIImageView alloc] initWithFrame:CGRectMake(x, y, w, h)];
    [_judgmentInfoView addSubview:_imgView];
    _judgmentInfoView.contentMode = UIViewContentModeScaleAspectFit;
    
    
    CGFloat disclosureIndicatorW = 12;
    
    x = x + w + p;
    w = _judgmentInfoView.frame.size.width - x - disclosureIndicatorW - p;
    
    _judgmentInfoLabel = [[UILabel alloc]initWithFrame:CGRectMake(x, y, w, h)];
    _judgmentInfoLabel.font = [UIFont systemFontOfSize:fontSize];
    _judgmentInfoLabel.textColor = [UIColor darkGrayColor];
    _judgmentInfoLabel.numberOfLines = 3;
    [_judgmentInfoView addSubview:_judgmentInfoLabel];
    
    x = x + w;
    w =  disclosureIndicatorW;
    UIImageView *disclosureIndicatorView = [[UIImageView alloc]initWithFrame:CGRectMake(x, y, w, h)];
    disclosureIndicatorView.image = [UIImage imageNamed:@"indicator.png"];
    disclosureIndicatorView.contentMode = UIViewContentModeScaleAspectFit;
    [_judgmentInfoView addSubview:disclosureIndicatorView];
    
}

- (void)setModel:(ECGModel *)model{
    _model = model;
    NSString *text = [NSString stringWithFormat:@"测量时长: %@",model.testDuration];
    UILabel *label  = [baseInfoLabels objectAtIndex:0];
    label.text = text;
    
    label  = [baseInfoLabels objectAtIndex:1];
    text = [NSString stringWithFormat:@"平均心率: %@",model.averHr];
    label.text = text;
    
    label  = [baseInfoLabels objectAtIndex:2];
    text = [NSString stringWithFormat:@"最大心率: %@",model.maxHr];
    label.text = text;
    
    label  = [baseInfoLabels objectAtIndex:3];
    text = [NSString stringWithFormat:@"室性早搏: %@",model.PVC];
    label.text = text;
    
    label  = [baseInfoLabels objectAtIndex:4];
    text = [NSString stringWithFormat:@"最小心率: %@",model.minHr];
    label.text = text;
    
    label  = [baseInfoLabels objectAtIndex:5];
    text = [NSString stringWithFormat:@"室上性早搏: %@",model.SVES];
    label.text = text;
    
    _judgmentInfoLabel.text = model.judgmentInfo;
    _imgView.image = model.judgmentHeader;
    _timeLabel.text = model.testTime;
}

@end
