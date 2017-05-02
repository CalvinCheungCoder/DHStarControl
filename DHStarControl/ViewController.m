//
//  ViewController.m
//  DHStarControl
//
//  Created by 张丁豪 on 2017/5/2.
//  Copyright © 2017年 zhangdinghao. All rights reserved.
//

#import "ViewController.h"
#import "DHStarControl.h"

@interface ViewController ()<DHStarValueChangeDelegate>

@property (nonatomic, weak) DHStarControl *starEvaluator;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    // StarEvaluator星形评价
    DHStarControl *starEvaluator = [[DHStarControl alloc] initWithFrame:CGRectMake(80, 180, 80, 15)];
    starEvaluator.delegate = self;
    [self.view addSubview:starEvaluator];
    self.starEvaluator = starEvaluator;
    
    self.starEvaluator.userInteractionEnabled = YES;
    self.starEvaluator.scoreValue = 10;
    self.starEvaluator.currentValue = 9;
    self.starEvaluator.starBackColor = [UIColor lightGrayColor];
    self.starEvaluator.starColor = [UIColor redColor];
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
