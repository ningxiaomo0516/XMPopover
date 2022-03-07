#ifdef __OBJC__
#import <UIKit/UIKit.h>
#else
#ifndef FOUNDATION_EXPORT
#if defined(__cplusplus)
#define FOUNDATION_EXPORT extern "C"
#else
#define FOUNDATION_EXPORT extern
#endif
#endif
#endif

#import "UIViewController+XMPopover.h"
#import "XMPopoverAnimator.h"
#import "XMPopoverMacro.h"
#import "XMPresentationController.h"

FOUNDATION_EXPORT double XMPopoverVersionNumber;
FOUNDATION_EXPORT const unsigned char XMPopoverVersionString[];

