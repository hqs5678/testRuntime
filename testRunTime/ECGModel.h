//
//  ECGModel.h
//  testRunTime
//
//  Created by hqs on 16/3/21.
//  Copyright © 2016年 hqs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ECGModel : NSObject

/**
 *  测量时长
 */
@property (nonatomic,strong) NSString *testDuration;
/**
 *  测量时间
 */
@property (nonatomic,strong) NSString *testTime;
@property (nonatomic,strong) NSString *averHr;
@property (nonatomic,strong) NSString *maxHr;
@property (nonatomic,strong) NSString *minHr;
/**
 *  室性早搏
 */
@property (nonatomic,strong) NSString *PVC;

/**
 *  室上性早搏
 */
@property (nonatomic,strong) NSString *SVES;


/**
 *  判读信息
 */
@property (nonatomic,strong) NSString  *judgmentInfo;

@property (nonatomic,strong) UIImage *judgmentHeader;

@end
