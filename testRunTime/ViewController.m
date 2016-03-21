//
//  ViewController.m
//  testRunTime
//
//  Created by hqs on 16/3/20.
//  Copyright © 2016年 hqs. All rights reserved.
//

#import "ViewController.h"

#import "Student.h"
#import "UIImageView+BigImageView.h"

#import "ECGViewController.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    
    [self testECG];
    

}

- (void)testECG{
    
    UITapGestureRecognizer *recorgnizer = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap:)];
    [self.view addGestureRecognizer:recorgnizer];
}

- (void)testRuntime{
    Student *stu = [[Student alloc]init];
    [stu setExtInfo:@"hahahhahahahahah"];
    
    NSLog(@"stu : %@",[stu extInfo]);
    
    
    
    
    // 第二种方案
    
    [stu setValue:@"test undefinedKey" forKey:@"hah"];
    
    NSLog(@"undefinedKey : %@",[stu valueForKey:@"hah"]);
}


- (void)testBigImageView{
    UITapGestureRecognizer *recorgnizer = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(tap:)];
    UIImageView *imgView = [[UIImageView alloc ]initWithFrame:CGRectMake(20, 40, 20, 20)];
    imgView.image = [UIImage imageNamed:@"1.png"];
    imgView.userInteractionEnabled = YES;
    [self.view addSubview:imgView];
    [imgView addGestureRecognizer:recorgnizer];
}

- (void)tap:(UITapGestureRecognizer *)recognizer{
    ECGViewController *vc = [[ECGViewController alloc]init];
    [self presentViewController:vc animated:YES completion:nil];

//    [((UIImageView *)recognizer.view) showFullScreenImage];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
