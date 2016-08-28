//
//  SJFactoryGrayColorViewGenerator.m
//  SJDesignPatterns
//
//  Created by zhoushejun on 16/8/28.
//  Copyright © 2016年 shejun.zhou. All rights reserved.
//

#import "SJFactoryGrayColorViewGenerator.h"
#import "SJFactoryGrayColorView.h"

@implementation SJFactoryGrayColorViewGenerator

- (SJFactoryColorView *)colorViewWithFrame:(CGRect)frame {
    return [[SJFactoryGrayColorView alloc] initWithFrame:frame];
}

@end
