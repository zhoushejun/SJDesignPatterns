//
//  SJCustomTextField.h
//  SJDesignPatterns
//
//  Created by zhoushejun on 16-5-26.
//  Copyright (c) 2016年 shejun.zhou. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SJInputValidator.h"

@interface SJCustomTextField : UITextField

@property (nonatomic, strong) IBOutlet SJInputValidator *inputValidator;

- (BOOL)validate;

@end
