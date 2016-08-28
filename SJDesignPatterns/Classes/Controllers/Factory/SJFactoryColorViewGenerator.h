//
//  SJFactoryColorViewGenerator.h
//  SJDesignPatterns
//
//  Created by zhoushejun on 16/8/28.
//  Copyright © 2016年 shejun.zhou. All rights reserved.
//

/**
 @file          SJFactoryColorViewGenerator.h
 @brief         Color颜色类生成器
 @author		shejun.zhou
 @version		1.0 16/8/28  Creation
 */

#import <Foundation/Foundation.h>
#import "SJFactoryColorView.h"

@interface SJFactoryColorViewGenerator : NSObject {
    
}

- (SJFactoryColorView *)colorViewWithFrame:(CGRect)frame;

@end
