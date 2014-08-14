//
// Created by Dani Postigo on 4/25/14.
//

#import "UIView+DPKitKeyboard.h"

@implementation UIView (DPKitKeyboard)

- (void) adjustViewForKeyboard {
    [self adjustViewForKeyboard: 20];
}

- (void) adjustViewForKeyboard: (CGFloat) offset {
    CGPoint center = self.center;
    [UIView animateWithDuration: 0.4
                     animations: ^{
                         self.center = CGPointMake(center.x, center.y - offset);
                     }
                     completion: nil];
}


- (void) unadjustViewForKeyboard {
    [self unadjustViewForKeyboard: 20];
}

- (void) unadjustViewForKeyboard: (CGFloat) offset {
    CGPoint center = self.center;
    self.center = CGPointMake(center.x, center.y + offset);
}
@end