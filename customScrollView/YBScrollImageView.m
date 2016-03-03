//
//  YBScrollImageView.m
//  customScrollView
//
//  Created by 王迎博 on 16/3/3.
//  Copyright © 2016年 王迎博. All rights reserved.
//

#import "YBScrollImageView.h"

@implementation YBScrollImageView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.userInteractionEnabled = YES;
    }
    return self;
}


-(void)addTarget:(id)target action:(SEL)action
{
    self.target = target;
    self.action = action;
}


- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    //如果self.target表示的对象中, self.action表示的方法存在的话
    if([self.target respondsToSelector:self.action])
    {
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Warc-performSelector-leaks"
        [self.target performSelector:self.action withObject:self];
#pragma clang diagnostic pop
    }
}


@end
