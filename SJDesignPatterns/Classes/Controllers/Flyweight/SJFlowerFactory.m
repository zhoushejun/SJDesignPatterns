//
//  SJFlowerFactory.m
//  SJDesignPatterns
//
//  Created by zhoushejun on 16-5-28.
//  Copyright (c) 2016年 shejun.zhou. All rights reserved.
//

#import "SJFlowerFactory.h"
#import "SJFlowerView.h"

@interface SJFlowerFactory ()

@property (nonatomic, strong) NSMutableDictionary *imagePool;    ///< 池

@end

@implementation SJFlowerFactory

- (UIView *)imageViewWithType:(FlowerType)type {
    
    UIView *imageView = [self.imagePool objectForKey:[NSNumber numberWithInteger:type]];
    if (!imageView) {
        UIImage *img = nil;
        switch (type) {
            case FlowerTypeDefault: {
                img = [UIImage imageNamed:@"0.jpg"];
            }
                break;
            case FlowerTypeGame: {
                img = [UIImage imageNamed:@"1.jpg"];
            }
                break;
            case FlowerTypeSeaside: {
                img = [UIImage imageNamed:@"2.jpg"];
            }
                break;
            default:
                break;
        }
        imageView = [[SJFlowerView alloc] initWithImage:img];
        [self.imagePool setObject:imageView forKey:[NSNumber numberWithInteger:type]];
    }
    
    return imageView;
}

- (NSMutableDictionary *)imagePool {
    if (!_imagePool) {
        _imagePool = [NSMutableDictionary dictionaryWithCapacity:TotalNumberOfFlowerTypes];
    }
    return _imagePool;
}

@end
