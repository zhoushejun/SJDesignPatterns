//
//  SJFlyweightView.h
//  SJDesignPatterns
//
//  Created by zhoushejun on 16-5-28.
//  Copyright (c) 2016年 shejun.zhou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SJFlowerViewState : NSObject

@property (nonatomic, strong) UIView *imageView;
@property (nonatomic, assign) CGRect area;

@end

@interface SJFlyweightView : UIView

@property (nonatomic, strong) NSMutableArray *imageViewList;

@end
