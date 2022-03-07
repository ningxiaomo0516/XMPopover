//
//  XMPopoverAnimator.h
//  XMPopover
//
//  Created by 宁小陌y on 2018/7/3.
//  Copyright © 2018年 宁小陌y. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XMPopoverMacro.h"

@interface XMPopoverAnimator : NSObject<UIViewControllerAnimatedTransitioning,UIViewControllerTransitioningDelegate>
@property(nonatomic,assign)CGRect       presentedFrame;
+ (instancetype)popoverAnimatorWithStyle:(XMPopoverType )popoverType
                          completeHandle:(XMCompleteHandle)completeHandle;

/// 设置视图大小
- (void)setCenterViewSize:(CGSize)size;
/// 设置底部视图高度
- (void)setBottomViewHeight:(CGFloat)height;

@end
