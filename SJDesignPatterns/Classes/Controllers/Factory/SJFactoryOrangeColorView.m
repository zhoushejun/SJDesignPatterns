//
//  SJFactoryOrangeColorView.m
//  SJDesignPatterns
//
//  Created by zhoushejun on 16/8/28.
//  Copyright © 2016年 shejun.zhou. All rights reserved.
//

#import "SJFactoryOrangeColorView.h"

@implementation SJFactoryOrangeColorView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        UIView *view = [[UIView alloc] initWithFrame:frame];
        view.backgroundColor = [UIColor orangeColor];
        [self addSubview:view];
    }
    
    return self;
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
