//
//  ViewController.m
//  TTMarqueeDemo
//
//  Created by iOS开发 on 2018/4/24.
//  Copyright © 2018年 燃烧的蔬菜. All rights reserved.
//

#import "ViewController.h"
#import "TTMarqueeView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    TTMarqueeView *marquee = [[TTMarqueeView alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 30)];
    marquee.marqueeText = @"我是跑马灯";
    [self.view addSubview:marquee];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
