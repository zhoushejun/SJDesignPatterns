//
//  SJInputValidator.h
//  SJDesignPatterns
//
//  Created by zhoushejun on 16-5-26.
//  Copyright (c) 2016年 shejun.zhou. All rights reserved.
//

/**
 @file          SJInputValidator.h
 @brief         策略设计模式的策略类
 @author		shejun.zhou
 @version		1.0 16-5-26  Creation
 */

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

#pragma mark - SJInputValidator

@interface SJInputValidator : NSObject

- (BOOL)validateInput:(UITextField *)input error:(NSError **)error;

@end

#pragma mark - SJNumericInputValidator

@interface SJNumericInputValidator : SJInputValidator

@end

#pragma mark - SJAlphaInputValidator

@interface SJAlphaInputValidator : SJInputValidator

@end