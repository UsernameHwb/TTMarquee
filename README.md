跑马灯
使用方法：
1. 下载demo，获取文件TTMarquee，导进你的工程
2.  TTMarqueeView *marquee = [[TTMarqueeView alloc] initWithFrame:CGRectMake(0, 100, self.view.frame.size.width, 30)];
    marquee.marqueeText = @"我是跑马灯";
    [self.view addSubview:marquee];
