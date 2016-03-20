//
//  Student.m
//  testRunTime
//
//  Created by hqs on 16/3/20.
//  Copyright © 2016年 hqs. All rights reserved.
//

#import "Student.h"
#import <objc/runtime.h>

@implementation Student


static char extInfo;

- (instancetype)init{
    self = [super init];
    if (self) {
        
        // 初始化
        objc_setAssociatedObject(self, &extInfo, @"test value", OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        
        
    }
    
    return self;
}


// 设置
- (void)setExtInfo:(NSString *)info{
    objc_setAssociatedObject(self, &extInfo, info, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


- (NSString *)extInfo{
    return [NSString stringWithFormat:@"extInfo:%@",objc_getAssociatedObject(self, &extInfo)];
}

@end
