//
//  UIImageView+BigImageView.h
//  testRunTime
//
//  Created by hqs on 16/3/21.
//  Copyright © 2016年 hqs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImageView() <UIScrollViewDelegate>

@end

@interface UIImageView (BigImageView)

// 显示大图片
-(void)showFullScreenImage;


@end
