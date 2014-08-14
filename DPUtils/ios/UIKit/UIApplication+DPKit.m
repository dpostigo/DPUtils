//
// Created by Dani Postigo on 5/4/14.
//

#import "UIApplication+DPKit.h"

@implementation UIApplication (DPKit)

+ (NSString *) interfaceOrientationAsString: (UIInterfaceOrientation) orientation {
    NSString *ret = nil;
    if (orientation == UIInterfaceOrientationLandscapeRight) {
        ret = @"UIInterfaceOrientationLandscapeRight";

    } else if (orientation == UIInterfaceOrientationLandscapeLeft) {
        ret = @"UIInterfaceOrientationLandscapeLeft";

    } else if (orientation == UIInterfaceOrientationPortraitUpsideDown) {
        ret = @"UIInterfaceOrientationPortraitUpsideDown";

    } else if (orientation == UIInterfaceOrientationPortrait) {
        ret = @"UIInterfaceOrientationPortrait";
    }
    return ret;
}

+ (NSString *) statusBarOrientationAsString {
    return [self interfaceOrientationAsString: [[UIApplication sharedApplication] statusBarOrientation]];
}

@end