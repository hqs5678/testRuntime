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

char extInfo;

- (instancetype)init{
    self = [super init];
    if (self) {
        
        objc_setAssociatedObject(self, &extInfo, @"test value", OBJC_ASSOCIATION_RETAIN_NONATOMIC);
        
        
    }
    
    return self;
}


- (void)setDesc:(NSString *)desc{
    objc_setAssociatedObject(self, &extInfo, desc, OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}


- (NSString *)stuDesc{
    
    return [NSString stringWithFormat:@"extInfo:%@",objc_getAssociatedObject(self, &extInfo)];
}

@end
