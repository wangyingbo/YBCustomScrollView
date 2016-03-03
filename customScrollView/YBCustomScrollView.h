//
//  YBCustomScrollView.h
//  customScrollView
//
//  Created by 王迎博 on 16/3/3.
//  Copyright © 2016年 王迎博. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void (^YBScrollViewSelectBlock)(NSInteger);//选中的
typedef void (^YBScrollViewCurrentIndex)(NSInteger);//当前位置

@interface YBCustomScrollView : UIView<UIScrollViewDelegate>

/**存储图片的地址*/
@property (nonatomic, strong) NSMutableArray *slideImagesArray;
/**图片点击事件*/
@property (nonatomic, copy) YBScrollViewSelectBlock YBEcrollViewSelectAction;
/**当前图片的位置*/
@property (nonatomic, copy) YBScrollViewCurrentIndex YBCurrentIndex;
/**是否显示pageControl*/
@property (nonatomic, assign) BOOL withoutPageControl;
/**是否自动滚动*/
@property (nonatomic, assign) BOOL withoutAutoScroll;
/**滚动时间*/
@property (nonatomic) NSNumber *autoTime;
/**当前选中pageControl的颜色*/
@property (nonatomic, strong) UIColor *pageControlCurrentPageIndicatorTintColor;
/**其他pageControl的颜色*/
@property (nonatomic, strong) UIColor *pageControlPageIndicatorTintColor;



/**加载初始化方法*/
- (void)startLoading;
/**加载初始化并制定初始图片*/
- (void)startLoadingByIndex:(NSInteger)index;


@end
