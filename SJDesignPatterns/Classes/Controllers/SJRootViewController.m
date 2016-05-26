//
//  SJRootViewController.m
//  SJDesignPatterns
//
//  Created by zhoushejun on 16-5-26.
//  Copyright (c) 2016年 shejun.zhou. All rights reserved.
//

#import "SJRootViewController.h"

typedef NS_ENUM(NSInteger, SJDesignPatternsType) {
    DesignPatternsTypeFactory, ///< 工厂
    DesignPatternsTypeAbstractFactory, ///< 抽象工厂
    DesignPatternsTypeStorage ///< 策略
};

@interface SJRootViewController ()

@property (nonatomic, strong) NSArray *dataSource;

@end

@implementation SJRootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.tableView.tableFooterView = [[UIView alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    // Return the number of sections.
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    // Return the number of rows in the section.
    return [self.dataSource count];
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"SJRootTableViewCell" forIndexPath:indexPath];
    
    // Configure the cell...
    cell.textLabel.text = _dataSource[indexPath.row];
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    NSLog(@"%@", _dataSource[indexPath.row]);
    switch (indexPath.row) {
        case DesignPatternsTypeFactory:
        {
        
        }
            break;
        case DesignPatternsTypeAbstractFactory:
        {
        
        }
            break;
        case DesignPatternsTypeStorage:
        {
        
        }
            break;
        default:
            break;
    }
}

#pragma mark - private


#pragma mark - getter and setter

- (NSArray *)dataSource {
    if (!_dataSource) {
        
        NSMutableArray *array = [NSMutableArray array];
        for (int i = 0; i < 3; i++) {
            switch (i) {
                case DesignPatternsTypeFactory: {
                    [array addObject:@"工厂模式"];
                }
                    break;
                case DesignPatternsTypeAbstractFactory: {
                    [array addObject:@"抽象工厂模式"];
                }
                    break;
                case DesignPatternsTypeStorage: {
                    [array addObject:@"策略设计模式"];
                }
                    break;
                default:
                    break;

            }
        }
        _dataSource = [NSArray arrayWithArray:array];
    }
    return _dataSource;
}

@end
