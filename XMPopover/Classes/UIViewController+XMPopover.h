//
//  UIViewController+XMPopover.h
//  XMPopover
//
//  Created by 宁小陌y on 2018/7/3.
//  Copyright © 2018年 宁小陌y. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XMPopoverMacro.h"
#import "XMPopoverAnimator.h"

@interface UIViewController (XMPopover)

@property(nonatomic,strong)XMPopoverAnimator        *popoverAnimator;

/**
 *  从底部弹出一个控制器
 *
 *  @param vc 需要弹出的控制器
 *  @param height 弹出的高度
 *  @param completion 弹出消失的回调
 */
- (void)nxm_bottomPresentController:(UIViewController *)vc presentedHeight:(CGFloat)height completeHandle:(XMCompleteHandle)completion;
/**
 *  从当前屏幕中间弹出一个控制器
 *
 *  @param vc 需要弹出的控制器
 *  @param size 设置size大小
 *  @param completion completion 弹出消失的回调
 */
- (void)nxm_centerPresentController:(UIViewController *)vc presentedSize:(CGSize)size completeHandle:(XMCompleteHandle)completion;

/**
 *  从当前屏幕三分之二的位置弹出一个控制器(主要用于有输入的地方)
 *
 *  @param vc 需要弹出的控制器
 *  @param size 设置size大小
 *  @param isCenter 视图是否居中
 *  @param completion completion 弹出消失的回调
 */
- (void)nxm_topPresentController:(UIViewController *)vc presentedSize:(CGSize)size isCenter:(BOOL)isCenter completeHandle:(XMCompleteHandle)completion;
/// 关闭VC
- (void)nxm_dismissVC;

/// 状态栏高度
- (float)nxm_tatusbarHeight;
/// 导航栏高度+状态栏高度
- (float)nxm_navigationbarHeight;
/// Tabbar高度
- (float)nxm_tabbarHeight;
@end
