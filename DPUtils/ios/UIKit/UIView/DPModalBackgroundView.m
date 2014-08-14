//
// Created by Dani Postigo on 6/15/14.
//

#import "DPModalBackgroundView.h"

@implementation DPModalBackgroundView



- (id)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    id hitView = [super hitTest:point withEvent:event];
    if (hitView == self) {
        return nil;
    }
    else return hitView;
}


@end