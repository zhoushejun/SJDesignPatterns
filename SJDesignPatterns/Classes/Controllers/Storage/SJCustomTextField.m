//
//  SJCustomTextField.m
//  SJDesignPatterns
//
//  Created by zhoushejun on 16-5-26.
//  Copyright (c) 2016年 shejun.zhou. All rights reserved.
//

#import "SJCustomTextField.h"


@interface SJCustomTextField ()


@end

@implementation SJCustomTextField

- (BOOL)validate {
    NSError *error = nil;
    BOOL validationResult = [_inputValidator validateInput:self error:&error];
    
    if (!validationResult) {
        NSLog(@"%@", error.localizedDescription);
        NSLog(@"%@", error.localizedFailureReason);
    }
    return validationResult;
}

@end
