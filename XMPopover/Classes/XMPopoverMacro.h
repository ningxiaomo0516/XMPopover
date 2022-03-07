//
//  XMPopoverMacro.h
//  XMPopover
//
//  Created by 宁小陌y on 2018/7/3.
//  Copyright © 2018年 宁小陌y. All rights reserved.
//

#ifndef XMPopoverMacro_h
#define XMPopoverMacro_h



#define WeakSelf(weakSelf)  __weak __typeof(&*self)weakSelf = self;

typedef void(^XMCompleteHandle)(BOOL presented);

typedef NS_ENUM(NSUInteger, XMPopoverType){
    XMPopoverTypeActionSheet = 1,
    XMPopoverTypeAlert = 2
};

#endif /* XMPopoverMacro_h */
