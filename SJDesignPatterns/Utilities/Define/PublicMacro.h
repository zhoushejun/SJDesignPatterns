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


#endif
