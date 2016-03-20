//
//  NSObject+Property.m
//  testRunTime
//
//  Created by hqs on 16/3/20.
//  Copyright © 2016年 hqs. All rights reserved.
//

#import "NSObject+Property.h"
#import <objc/runtime.h>

@implementation NSObject (Property)


// 处理对没有定义的属性赋值问题
- (void)setValue:(id)value forUndefinedKey:(NSString *)key{
    objc_setAssociatedObject(self, [key UTF8String], value, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}

- (id)valueForUndefinedKey:(NSString *)key{
    return objc_getAssociatedObject(self, [key UTF8String]);
}

@end
