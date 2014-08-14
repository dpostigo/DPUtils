//
// Created by Dani Postigo on 6/6/14.
//

#import <Foundation/Foundation.h>

@interface UIViewController (DPKit)

- (void (^)()) constraintAnimationBlock;
- (void) registerKeyboardWillShow: (SEL) selector;
- (void) embedFullscreenController: (UIViewController *) controller;
@end