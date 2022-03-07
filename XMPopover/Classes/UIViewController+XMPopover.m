//
//  UIViewController+XMPopover.m
//  XMPopover
//
//  Created by 宁小陌 on 2018/7/3.
//  Copyright © 2018年 宁小陌. All rights reserved.
//

#import "UIViewController+XMPopover.h"
#import <objc/runtime.h>

static const char popoverAnimatorKey;

@implementation UIViewController (XMPopover)

- (XMPopoverAnimator *)popoverAnimator{
    return objc_getAssociatedObject(self, &popoverAnimatorKey);
}
- (void)setPopoverAnimator:(XMPopoverAnimator *)popoverAnimator{
    objc_setAssociatedObject(self, &popoverAnimatorKey, popoverAnimator, OBJC_ASSOCIATION_RETAIN) ;
}


- (void)nxm_bottomPresentController:(UIViewController *)vc presentedHeight:(CGFloat)height completeHandle:(XMCompleteHandle)completion{
    self.popoverAnimator = [XMPopoverAnimator popoverAnimatorWithStyle:XMPopoverTypeActionSheet completeHandle:completion];
    
    vc.modalPresentationStyle = UIModalPresentationCustom;
    vc.transitioningDelegate = self.popoverAnimator;
    [self.popoverAnimator setBottomViewHeight:height];
    
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)nxm_centerPresentController:(UIViewController *)vc presentedSize:(CGSize)size completeHandle:(XMCompleteHandle)completion{
    self.popoverAnimator = [XMPopoverAnimator popoverAnimatorWithStyle:XMPopoverTypeAlert completeHandle:completion];
    [self.popoverAnimator setCenterViewSize:size];
    
    vc.modalPresentationStyle = UIModalPresentationCustom;
    vc.transitioningDelegate = self.popoverAnimator;
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)nxm_topPresentController:(UIViewController *)vc presentedSize:(CGSize)size isCenter:(BOOL)isCenter completeHandle:(XMCompleteHandle)completion{
    self.popoverAnimator = [XMPopoverAnimator popoverAnimatorWithStyle:XMPopoverTypeAlert completeHandle:completion];
    [self.popoverAnimator setCenterViewSize:size];
    
    vc.modalPresentationStyle = UIModalPresentationCustom;
    vc.transitioningDelegate = self.popoverAnimator;
    [self presentViewController:vc animated:YES completion:nil];
}

- (void)nxm_dismissVC{
    [self dismissViewControllerAnimated:YES completion:nil];
}

/// 状态栏高度
- (float)nxm_tatusbarHeight{
    return [[UIApplication sharedApplication] statusBarFrame].size.height;
}


/// 导航栏高度+状态栏高度
- (float)nxm_navigationbarHeight{
    return self.navigationController.navigationBar.frame.size.height + [[UIApplication sharedApplication] statusBarFrame].size.height;
}

/// Tabbar高度
- (float)nxm_tabbarHeight{
    return self.tabBarController.tabBar.bounds.size.height;
}

@end

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             
