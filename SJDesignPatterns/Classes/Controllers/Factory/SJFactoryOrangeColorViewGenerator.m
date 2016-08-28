//
//  SJFactoryOrangeColorViewGenerator.m
//  SJDesignPatterns
//
//  Created by zhoushejun on 16/8/28.
//  Copyright © 2016年 shejun.zhou. All rights reserved.
//

#import "SJFactoryOrangeColorViewGenerator.h"
#import "SJFactoryOrangeColorView.h"

@implementation SJFactoryOrangeColorViewGenerator

- (SJFactoryColorView *)colorViewWithFrame:(CGRect)frame {
    return [[SJFactoryOrangeColorView alloc] initWithFrame:frame];
}

@end
