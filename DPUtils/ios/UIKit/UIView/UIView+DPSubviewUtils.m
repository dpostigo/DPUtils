//
// Created by Danielle Postigo on 8/14/14.
//

#import "UIView+DPSubviewUtils.h"


@implementation UIView (DPSubviewUtils)



- (void) removeAllSubviews {
    while (self.subviews.count) {
        UIView *child = self.subviews.lastObject;
        [child removeFromSuperview];
    }
}

@end