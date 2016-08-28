//
//  PublicMacro.h
//  SJDesignPatterns
//
//  Created by zhoushejun on 16-5-26.
//  Copyright (c) 2016年 shejun.zhou. All rights reserved.
//

#ifndef SJDesignPatterns_PublicMacro_h
#define SJDesignPatterns_PublicMacro_h

/** @name PUSH */
// @{

#define MAIN @"Main"

#define STORYBOARD(StoryboardName) [UIStoryboard storyboardWithName:StoryboardName bundle:nil]

#define PUSH_VC_ANIMATED_MAIN(ViewControllerName) [self.navigationController pushViewController:\
[STORYBOARD(MAIN) instantiateViewControllerWithIdentifier:NSStringFromClass([ViewControllerName class])] \
animated:YES]

// @}end of PUSH

/** @name DEBUG 模式下打印日志和当前行数 */
// @{
#if DEBUG
#define NSLog(FORMAT, ...) fprintf(stderr,"\nfunction:%s line:%d content--->>> \n%s\n", __FUNCTION__, __LINE__, [[NSString stringWithFormat:FORMAT, ##__VA_ARGS__] UTF8String]);
#else
#define NSLog(FORMAT, ...) nil
#endif
// @}end of DEBUG 模式下打印日志和当前行数

/** @name 获取屏幕 宽度、高度 */
// @{
/** @attention 勿删 */
#define SCREEN_WIDTH  ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)
// @}end of 获取屏幕 宽度、高度

#endif
