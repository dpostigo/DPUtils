//
// Created by Dani Postigo on 6/3/14.
//

#import "UIView+DPAnimationUtils.h"


@implementation UIView (DPAnimationUtils)

- (void) fadeIn: (CGFloat) alphaIn withDuration: (CGFloat) durationIn toAlpha: (CGFloat) alphaOut withDuration: (CGFloat) durationOut {
    void (^animateIn) () = ^{
        self.alpha = alphaIn;
    };

    void (^animateOut) () = ^{
        self.alpha = alphaOut;
    };

    [self animateIn: animateIn withDuration: durationIn animationOut: animateOut withDuration: durationOut];
}


- (void) animateIn: (void (^)()) animationIn withDuration: (CGFloat) durationIn animationOut: (void (^)()) animationOut withDuration: (CGFloat) durationOut {
    [UIView animateWithDuration: durationIn
                     animations: animationIn
                     completion: ^(BOOL finished) {
                         [UIView animateWithDuration: durationOut
                                          animations: animationOut
                                          completion: nil];

                     }];
}

- (void) animateIn: (void (^)()) animationIn withDuration: (CGFloat) durationIn animationOut: (void (^)()) animationOut withDuration: (CGFloat) durationOut options: (UIViewAnimationOptions) options {
    [UIView animateWithDuration: durationIn
                          delay: 0.0
                        options: options
                     animations: animationIn
                     completion: ^(BOOL finished) {
                         [UIView animateWithDuration: durationOut
                                          animations: animationOut
                                          completion: nil];

                     }];
}

@end