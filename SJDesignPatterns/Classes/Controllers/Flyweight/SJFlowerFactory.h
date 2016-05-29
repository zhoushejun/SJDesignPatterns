//
//  SJFlowerFactory.h
//  SJDesignPatterns
//
//  Created by zhoushejun on 16-5-28.
//  Copyright (c) 2016年 shejun.zhou. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSInteger, FlowerType) {
    FlowerTypeDefault, ///< 默认图片
    FlowerTypeGame,  ///< 壹天讯时的运动会
    FlowerTypeSeaside,  ///< 海边
    TotalNumberOfFlowerTypes ///< 图片类型总数
};

@interface SJFlowerFactory : NSObject

- (UIView *)imageViewWithType:(FlowerType)type;

@end
