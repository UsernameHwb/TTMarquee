//
//  TTMarqueeView.h
//  TTMarqueeDemo
//
//  Created by iOS开发 on 2018/4/24.
//  Copyright © 2018年 燃烧的蔬菜. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TTMarqueeView : UIView

/**
 *  跑马灯内容
 */
@property (nonatomic, strong) NSString *marqueeText;
/**
 *  关闭定时器
 */
- (void)closeTimer;
@end
