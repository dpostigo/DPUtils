//
// Created by Dani Postigo on 4/30/14.
//

#import "UIGestureRecognizer+DPKit.h"

@implementation UIGestureRecognizer (DPKit)

- (NSString *) stateAsString {

    NSString *ret = nil;
    if (self.state == UIGestureRecognizerStateBegan) {
        ret = @"UIGestureRecognizerStateBegan";

    } else if (self.state == UIGestureRecognizerStateCancelled) {
        ret = @"UIGestureRecognizerStateCancelled";

    } else if (self.state == UIGestureRecognizerStateChanged) {
        ret = @"UIGestureRecognizerStateChanged";

    } else if (self.state == UIGestureRecognizerStateEnded) {
        ret = @"UIGestureRecognizerStateEnded";

    } else if (self.state == UIGestureRecognizerStateFailed) {
        ret = @"UIGestureRecognizerStateFailed";

    } else if (self.state == UIGestureRecognizerStatePossible) {
        ret = @"UIGestureRecognizerStatePossible";

    } else if (self.state == UIGestureRecognizerStateRecognized) {
        ret = @"UIGestureRecognizerStateRecognized";

    }
    return ret;
}


@end