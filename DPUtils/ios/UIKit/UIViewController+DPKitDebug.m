//
// Created by Dani Postigo on 5/7/14.
//

#import "UIViewController+DPKitDebug.h"

@implementation UIViewController (DPKitDebug)

- (NSString *) modalTransitionStyleAsString {
    return [self stringForTransitionStyle: self.modalTransitionStyle];
}


- (NSString *) modalPresentationStyleAsString {
    return [self stringForPresentationStyle: self.modalPresentationStyle];
}

- (NSString *) stringForTransitionStyle: (UIModalTransitionStyle) style {
    NSString *ret = nil;
    switch (style) {
        case UIModalTransitionStyleCoverVertical :
            ret = @"UIModalTransitionStyleCoverVertical";
            break;

        case UIModalTransitionStyleCrossDissolve :
            ret = @"UIModalTransitionStyleCrossDissolve";
            break;

        case UIModalTransitionStyleFlipHorizontal :
            ret = @"UIModalTransitionStyleFlipHorizontal";
            break;

        case UIModalTransitionStylePartialCurl :
            ret = @"UIModalTransitionStylePartialCurl";
            break;
    }
    return ret;
}


- (NSString *) stringForPresentationStyle: (UIModalPresentationStyle) style {
    NSString *ret = nil;
    switch (style) {
        case UIModalPresentationCurrentContext :
            ret = @"UIModalPresentationCurrentContext";
            break;

        case UIModalPresentationCustom :
            ret = @"UIModalPresentationCustom";
            break;

        case UIModalPresentationFormSheet :
            ret = @"UIModalPresentationFormSheet";
            break;

        case UIModalPresentationFullScreen :
            ret = @"UIModalPresentationFullScreen";
            break;
        case UIModalPresentationNone :
            ret = @"UIModalPresentationNone";
            break;

        case UIModalPresentationPageSheet :
            ret = @"UIModalPresentationPageSheet";
            break;

    }
    return ret;
}
@end