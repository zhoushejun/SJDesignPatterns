//
//  SJStorageViewController.m
//  SJDesignPatterns
//
//  Created by zhoushejun on 16-5-26.
//  Copyright (c) 2016年 shejun.zhou. All rights reserved.
//

#import "SJStorageViewController.h"

#import "SJCustomTextField.h"

@interface SJStorageViewController ()

@end

@implementation SJStorageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

- (void)textFieldDidEndEditing:(UITextField *)textField {
    if ([textField isKindOfClass:[SJCustomTextField class]]) {
        [(SJCustomTextField *)textField validate];
    }
}

@end
