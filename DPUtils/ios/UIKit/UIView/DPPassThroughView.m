//
// Created by Dani Postigo on 6/11/14.
//

#import "DPPassThroughView.h"


@implementation DPPassThroughView

- (id)hitTest:(CGPoint)point withEvent:(UIEvent *)event {
    id hitView = [super hitTest:point withEvent:event];
    if (hitView == self) return nil;
    else return hitView;
}
@end