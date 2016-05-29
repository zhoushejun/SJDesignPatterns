//
//  SJFlyweightViewController.m
//  SJDesignPatterns
//
//  Created by zhoushejun on 16-5-28.
//  Copyright (c) 2016年 shejun.zhou. All rights reserved.
//

#import "SJFlyweightViewController.h"
#import "SJFlowerView.h"
#import "SJFlowerFactory.h"
#import "SJFlyweightView.h"

@interface SJFlyweightViewController ()

@end

@implementation SJFlyweightViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSInteger count = 200;
    SJFlowerFactory *factory = [[SJFlowerFactory alloc] init];
    NSMutableArray *imageViewList = [NSMutableArray arrayWithCapacity:count];
    
    CGRect screenBounds = [[UIScreen mainScreen] bounds];
    NSInteger screenWidth = screenBounds.size.width;
    NSInteger screenHeight = screenBounds.size.height;
    NSInteger minSize = 20;
    NSInteger maxSize = 60;
    
    for (int i = 0; i < count; i++) {
        FlowerType flowerType = arc4random() % TotalNumberOfFlowerTypes;
        UIView *imageView = [factory imageViewWithType:flowerType];
        
        CGFloat x = arc4random() % screenWidth;
        CGFloat y = arc4random() % screenHeight;
        CGFloat size = (arc4random() % (maxSize-minSize+1)) + minSize;
        SJFlowerViewState *state = [[SJFlowerViewState alloc] init];
        state.imageView = imageView;
        state.area = CGRectMake(x, y, size, size);
        
        [imageViewList addObject:state];
    }

    SJFlyweightView *imageView = (SJFlyweightView *)self.view;
    imageView.imageViewList = imageViewList;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
