//
// Created by Dani Postigo on 4/25/14.
//

#import <Foundation/Foundation.h>

@interface UIView (DPKitKeyboard)

- (void) adjustViewForKeyboard;
- (void) adjustViewForKeyboard: (CGFloat) offset;
- (void) unadjustViewForKeyboard;
- (void) unadjustViewForKeyboard: (CGFloat) offset;
@end