//
//  Student.h
//  testRunTime
//
//  Created by hqs on 16/3/20.
//  Copyright © 2016年 hqs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Student : NSObject



// 使用runtime 在类中动态添加使用 extInfo 的属性


- (NSString *)extInfo;

- (void)setExtInfo:(NSString *)info;

@end
