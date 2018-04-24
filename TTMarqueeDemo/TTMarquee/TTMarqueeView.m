//
//  TTMarqueeView.m
//  TTMarqueeDemo
//
//  Created by iOS开发 on 2018/4/24.
//  Copyright © 2018年 燃烧的蔬菜. All rights reserved.
//

#import "TTMarqueeView.h"
#import "UIView+add.h"


#define kMarqueeLeftPadding    40
// 屏幕高度
#define kScreenH [UIScreen mainScreen].bounds.size.height
// 屏幕宽度
#define kScreenW [UIScreen mainScreen].bounds.size.width

@interface TTMarqueeView ()
{
    UILabel     *_marqueeL;
    NSTimer     *_timer;
}
@end

@implementation TTMarqueeView

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self == [super initWithFrame:frame]) {
        [self setupviews];
    }
    return self;
}

- (void)setupviews
{
    self.backgroundColor = [[UIColor blackColor] colorWithAlphaComponent:0.8];
    
    UIImageView *speakerImg = [UIImageView new];
    speakerImg.image = [UIImage imageNamed:@"home_speaker"];
    CGSize size = speakerImg.image.size;
    speakerImg.frame = CGRectMake(10, (self.frame.size.height - size.height) / 2, size.width, size.height);
    [self addSubview:speakerImg];
    
    UIView *marqueeBgView = [UIView new];
    marqueeBgView.backgroundColor = [UIColor clearColor];
    
    marqueeBgView.frame = CGRectMake(CGRectGetMaxX(speakerImg.frame) + 10, 0, self.frame.size.width - CGRectGetMaxX(speakerImg.frame), self.frame.size.height);
    marqueeBgView.clipsToBounds = YES;
    [self addSubview:marqueeBgView];
    
    _marqueeL = ({
        UILabel *label = [UILabel new];
        label.text = @"广播";
        label.textColor = [UIColor whiteColor];
        label.font = [UIFont systemFontOfSize:13];
        label.frame = CGRectMake(0, 0, marqueeBgView.frame.size.width, marqueeBgView.frame.size.height);
        
        [marqueeBgView addSubview:label];
        label;
    });
    
    
}

- (void)closeTimer
{
    if (_timer) {
        [_timer invalidate];
        _timer = nil;
    }
}

- (void)setMarqueeText:(NSString *)marqueeText
{
    _marqueeText = marqueeText;
    
    _marqueeL.text = marqueeText;
    [_marqueeL sizeToFit];
    
    [self closeTimer];
    
    _marqueeL.left = kScreenW - kMarqueeLeftPadding - 10;
    _marqueeL.centerY = self.height / 2;
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:0.01 target:self selector:@selector(resetMarqueeFrame) userInfo:nil repeats:YES];
    
    [[NSRunLoop currentRunLoop] addTimer:_timer forMode:NSRunLoopCommonModes];
}
- (void)resetMarqueeFrame
{
    _marqueeL.left -= 0.3;
    if (_marqueeL.right <= 0) {
        _marqueeL.left = kScreenW - kMarqueeLeftPadding - 10;
    }
}

@end
