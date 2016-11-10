//
//  QFMViewController.m
//  NSNotificationCenter
//
//  Created by fulen on 2016/11/9.
//  Copyright © 2016年 min. All rights reserved.
//

#import "QFMViewController.h"

@interface QFMViewController ()

@end

@implementation QFMViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"MessageDetailVC";
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(receiveMessage:) name:@"远程通知" object:nil];
    self.view.backgroundColor = [UIColor cyanColor];
    [self creatLabel];
}


- (void)receiveMessage:(NSNotification *)notification
{
    NSLog(@"userInfo%@",notification.userInfo);
    
}




- (void)creatLabel{
    UILabel *messageLabel = [[UILabel alloc] init];
    //    [self receiveMessage:notification];
    messageLabel.frame = CGRectMake(0, 10, self.view.frame.size.width-20, 200);
    messageLabel.text = @"nihao";
    messageLabel.backgroundColor = [UIColor whiteColor];
    messageLabel.textColor = [UIColor blackColor];
    [self.view addSubview:messageLabel];
    
    
}


- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self];
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

@end
