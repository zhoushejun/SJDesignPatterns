//
//  SJFlyweightView.m
//  SJDesignPatterns
//
//  Created by zhoushejun on 16-5-28.
//  Copyright (c) 2016年 shejun.zhou. All rights reserved.
//

#import "SJFlyweightView.h"

@interface SJFlowerViewState ()


@end

@implementation SJFlowerViewState

@end


@implementation SJFlyweightView

- (void)drawRect:(CGRect)rect {
    // Drawing code
    for (SJFlowerViewState *state in self.imageViewList) {
        UIView *imageView = state.imageView;
        CGRect area = state.area;
        [imageView drawRect:area];
    }
}

- (void)setImageViewList:(NSMutableArray *)imageViewList {
    if (!_imageViewList) {
        _imageViewList = [NSMutableArray arrayWithArray:imageViewList];
    }
}

@end
