//
//  YBScrollImageView.h
//  customScrollView
//
//  Created by 王迎博 on 16/3/3.
//  Copyright © 2016年 王迎博. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YBScrollImageView : UIImageView

@property (nonatomic, assign) id target;
@property (nonatomic, assign) SEL action;

-(void)addTarget:(id)target action:(SEL)action;

@end
