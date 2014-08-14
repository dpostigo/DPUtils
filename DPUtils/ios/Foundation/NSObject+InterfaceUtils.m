//
// Created by Dani Postigo on 5/10/14.
//

#import "NSObject+InterfaceUtils.h"
#import "UIApplication+DPKit.h"

@implementation NSObject (InterfaceUtils)

- (UIInterfaceOrientation)statusOrientation {
    return [[UIApplication sharedApplication] statusBarOrientation];
}

- (NSString *)stringForInterfaceOrientation:(UIInterfaceOrientation)orientation {
    return [UIApplication interfaceOrientationAsString:orientation];

}


- (NSString *)statusOrientationAsString {
    return [UIApplication interfaceOrientationAsString:self.statusOrientation];
}

- (BOOL)isLandscapeLeft {
    return self.statusOrientation == UIInterfaceOrientationLandscapeLeft;
}


- (BOOL)isLandscapeRight {
    return self.statusOrientation == UIInterfaceOrientationLandscapeRight;
}


- (BOOL)isLandscape {
    return UIInterfaceOrientationIsLandscape([[UIApplication sharedApplication] statusBarOrientation]);
}


#pragma mark Device orientation

- (UIDeviceOrientation)deviceOrientation {
    return [UIDevice currentDevice].orientation;
}

- (NSString *)deviceOrientationAsString {
    return [self stringForDeviceOrientation:[UIDevice currentDevice].orientation];
}

- (NSString *)stringForDeviceOrientation:(UIDeviceOrientation)orientation {

    NSString *ret = nil;
    if (orientation == UIDeviceOrientationUnknown) {
        ret = @"UIDeviceOrientationUnknown";
    } else if (orientation == UIDeviceOrientationPortrait) {
        ret = @"UIDeviceOrientationPortrait";
    } else if (orientation == UIDeviceOrientationPortraitUpsideDown) {
        ret = @"UIDeviceOrientationPortraitUpsideDown";
    } else if (orientation == UIDeviceOrientationLandscapeLeft) {
        ret = @"UIDeviceOrientationLandscapeLeft";
    } else if (orientation == UIDeviceOrientationLandscapeRight) {
        ret = @"UIDeviceOrientationLandscapeRight";
    } else if (orientation == UIDeviceOrientationFaceUp) {
        ret = @"UIDeviceOrientationFaceUp";
    } else if (orientation == UIDeviceOrientationFaceDown) {
        ret = @"UIDeviceOrientationFaceDown";
    }
    return ret;
}
@end