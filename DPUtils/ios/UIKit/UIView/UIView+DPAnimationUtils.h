//
// Created by Dani Postigo on 6/3/14.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface UIView (DPAnimationUtils)

- (void) fadeIn: (CGFloat) alphaIn withDuration: (CGFloat) durationIn toAlpha: (CGFloat) alphaOut withDuration: (CGFloat) durationOut;
- (void) animateIn: (void (^)()) animationIn withDuration: (CGFloat) durationIn animationOut: (void (^)()) animationOut withDuration: (CGFloat) durationOut;
@end