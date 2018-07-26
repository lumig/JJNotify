//
//  ViewController.m
//  JJNotify
//
//  Created by luming on 2018/7/26.
//  Copyright © 2018年 luming. All rights reserved.
//

#import "ViewController.h"
#import "JJNotify.h"
#import "SecondViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame =  CGRectMake(100, 100, 100, 50);
    [self.view addSubview:btn];
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(btnDidClick) forControlEvents:UIControlEventTouchUpInside];
    
    [JJNotify registerNotify:@"SecondPage" instance:self block:^(id  _Nullable info) {
    __weak __typeof(self) wSelf = self;
        __strong __typeof(wSelf) sSelf = wSelf;
        sSelf.view.backgroundColor = [UIColor blueColor];
    }];
    
}

- (void)btnDidClick
{
    SecondViewController *vc = [[SecondViewController alloc] init];
    vc.hidesBottomBarWhenPushed = YES;
    [self.navigationController pushViewController:vc animated:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
