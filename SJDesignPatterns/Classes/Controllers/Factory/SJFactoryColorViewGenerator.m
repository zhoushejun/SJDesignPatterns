//
//  SJFactoryColorViewGenerator.m
//  SJDesignPatterns
//
//  Created by zhoushejun on 16/8/28.
//  Copyright © 2016年 shejun.zhou. All rights reserved.
//

#import "SJFactoryColorViewGenerator.h"

@implementation SJFactoryColorViewGenerator

- (SJFactoryColorView *)colorViewWithFrame:(CGRect)frame {
    return [[SJFactoryColorView alloc] initWithFrame:frame];
}

@end
