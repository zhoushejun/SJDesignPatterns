//
//  SJFactoryViewController.m
//  SJDesignPatterns
//
//  Created by zhoushejun on 16-5-26.
//  Copyright (c) 2016年 shejun.zhou. All rights reserved.
//

#import "SJFactoryViewController.h"
#import "SJFactoryColorView.h"
#import "SJFactoryColorViewGenerator.h"
#import "SJFactoryGrayColorViewGenerator.h"
#import "SJFactoryOrangeColorViewGenerator.h"

@interface SJFactoryViewController ()

@property (nonatomic, strong) SJFactoryColorView *colorView;

@end

@implementation SJFactoryViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    SJFactoryColorViewGenerator *defaultColorView = [[SJFactoryOrangeColorViewGenerator alloc] init];
    [self loadcolorViewWithGenerator:defaultColorView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)loadcolorViewWithGenerator:(SJFactoryColorViewGenerator *)generator {
    [_colorView removeFromSuperview];
    CGRect aFrame = CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT);
    SJFactoryColorView *colorView = [generator colorViewWithFrame:aFrame];
    [self setColorView:colorView];
    [[self view] addSubview:_colorView];
}

@end
