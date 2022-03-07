//
//  XMPresentationController.h
//  XMPopover
//
//  Created by 宁小陌y on 2018/7/3.
//  Copyright © 2018年 宁小陌y. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "XMPopoverMacro.h"

@interface XMPresentationController : UIPresentationController

@property(nonatomic,assign)CGSize           presentedSize;
@property(nonatomic,assign)CGFloat          presentedHeight;
/// 是否不需要居中(默认居中)
@property(nonatomic,assign)BOOL             presentedTop;

/// 蒙版
@property(nonatomic,strong)UIView           *coverView;
@property(nonatomic,assign)XMPopoverType    popoverType;

@end
