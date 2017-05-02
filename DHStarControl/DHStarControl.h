//
//  DHStarControl.h
//  DHStarControl
//
//  Created by 张丁豪 on 2017/5/2.
//  Copyright © 2017年 zhangdinghao. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DHStarControl;
@protocol DHStarValueChangeDelegate <NSObject>

@optional
// 代理方法 动态获取评分
- (void)starEvaluator:(DHStarControl *)evaluator currentValue:(float)value;

@end

@interface DHStarControl : UIControl

@property (assign, nonatomic) id<DHStarValueChangeDelegate>delegate;

/**
 评分的总分值
 */
@property (nonatomic, assign) float scoreValue;

/**
 当前的分值
 */
@property (nonatomic, assign) float currentValue;

/**
 星星背景颜色
 */
@property (nonatomic, strong) UIColor *starBackColor;


/**
 星星颜色
 */
@property (nonatomic, strong) UIColor *starColor;

@end
