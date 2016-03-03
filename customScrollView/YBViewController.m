//
//  ViewController.m
//  customScrollView
//
//  Created by 王迎博 on 16/3/3.
//  Copyright © 2016年 王迎博. All rights reserved.
//

#import "YBViewController.h"
#import "YBCustomScrollView.h"

@interface YBViewController ()

@end

@implementation YBViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self addScrollView];
}


- (void)addScrollView
{
    YBCustomScrollView *scrollView = [[YBCustomScrollView alloc] initWithFrame:CGRectMake(0, 20, self.view.frame.size.width, 130)];
    NSMutableArray *array = [NSMutableArray array];
    
    for (NSInteger i = 1; i < 7; i ++)
    {
        [array addObject:[NSString stringWithFormat:@"http://childmusic.qiniudn.com/huandeng/%ld.png", (long)i]];
    }
    
    scrollView.slideImagesArray = array;
    scrollView.YBEcrollViewSelectAction = ^(NSInteger i){
        NSLog(@"点击了%ld张图片",(long)i);
    };
    scrollView.YBCurrentIndex = ^(NSInteger index){
        NSLog(@"测试一下：%ld",(long)index);
    };
    
    scrollView.pageControlPageIndicatorTintColor = [UIColor colorWithRed:255/255.0f green:244/255.0f blue:227/255.0f alpha:1];
    scrollView.pageControlCurrentPageIndicatorTintColor = [UIColor colorWithRed:67/255.0f green:174/255.0f blue:168/255.0f alpha:1];
    
    scrollView.autoTime = [NSNumber numberWithFloat:4.0f];
    NSLog(@"%@",scrollView.slideImagesArray);
    
    [scrollView startLoading];
    [self.view addSubview:scrollView];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
