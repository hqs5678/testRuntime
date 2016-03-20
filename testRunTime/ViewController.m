//
//  ViewController.m
//  testRunTime
//
//  Created by hqs on 16/3/20.
//  Copyright © 2016年 hqs. All rights reserved.
//

#import "ViewController.h"

#import "Student.h"




@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    Student *stu = [[Student alloc]init];
    [stu setExtInfo:@"hahahhahahahahah"];
    
    NSLog(@"stu : %@",[stu extInfo]);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
