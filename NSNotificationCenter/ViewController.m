//
//  ViewController.m
//  NSNotificationCenter
//
//  Created by fulen on 2016/11/9.
//  Copyright © 2016年 min. All rights reserved.
//

#import "ViewController.h"
#import "QFMViewController.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor grayColor];
    
    
    QFMViewController *qfm = [[QFMViewController alloc] init];
    NSDictionary *userInfo = @{@"dic1":@"zheshidic1",@"dic2":@"zheshidic2"};
    NSNotification *notification = [NSNotification notificationWithName:@"远程通知" object:nil userInfo:userInfo];
    [[NSNotificationCenter defaultCenter] postNotification:notification];
    
    
    [self.navigationController pushViewController:qfm animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
