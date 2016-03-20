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
        
//        // 初始化
//        objc_setAssociatedObject(self, &extInfo, @"test value", OBJC_ASSOCIATION_RETAIN_NONATOMIC);
//        
        
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




// 第二种方案
// 直接使用下面连个函数
// 处理所有未定义的属性
// 注意: value 为 id

//- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
//    objc_setAssociatedObject(self, [key UTF8String], value, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
//}
//
//- (id)valueForUndefinedKey:(NSString *)key{
//    return objc_getAssociatedObject(self, [key UTF8String]);
//}
@end
