//
// Created by Dani Postigo on 2/10/14.
//

#import "NSView+DPKit.h"

@implementation NSView (DPKit)

- (void) removeAllSubviews {
    NSArray *subviews = [NSArray arrayWithArray: self.subviews];
    for (NSView *subview in subviews) {
        [subview removeFromSuperview];
    }
}

- (void) recursiveWantsLayer {
    NSView *superview = self.superview;
    while (superview) {
        superview.wantsLayer = YES;
        superview.layer.masksToBounds = NO;
        superview = superview.superview;
    }
}
//
//- (instancetype) loadFromNib {
//    return [[self class] loadFromNib];
//}
//
//
//- (instancetype) loadFromNib: (NSString *) nibName {
//    return [[self class] loadFromNib: nibName];
//}
//
//
//- (instancetype) loadFromNib: (NSString *) nibName owner: (id) owner {
//    return [[self class] loadFromNib: nibName];
//}

+ (instancetype) loadFromNib {
    return [NSView loadFromNib: [self className]];
}

+ (instancetype) loadFromNib: (NSString *) nibName {
    return [NSView loadFromNib: nibName owner: nil];
}

+ (instancetype) loadFromNib: (NSString *) nibName owner: (id) owner {
    id ret = nil;
    NSNib *nib = [[NSNib alloc] initWithNibNamed: nibName bundle: nil];
    NSArray *topLevelObjects;

    BOOL success = [nib instantiateWithOwner: owner topLevelObjects: &topLevelObjects];

    if (success) {
        for (id topLevelObject in topLevelObjects) {
            if ([topLevelObject isKindOfClass: [self class]]) {
                ret = topLevelObject;
                break;
            }
        }
    } else {
        NSLog(@"no success.");
    }

    if (ret == nil) {
        NSLog(@"ret = %@", ret);
    }

    return ret;
}

- (NSView *) viewWithIdentifier: (NSString *) identifier {
    NSArray *subviews = [NSArray arrayWithArray: self.subviews];

    for (NSView *view in subviews) {
        if ([view.identifier isEqualToString: identifier]) {
            return view;
        }
    }

    return nil;
}

typedef void (^DPKitViewBlock)(NSView *view);

- (void) recursivelyExecuteBlock: (DPKitViewBlock) viewBlock {

    NSArray *subviews = [self subviews];

    if ([subviews count] == 0) {
        viewBlock(self);
        return;
    } else {
        for (NSView *subview in subviews) {
            [subview recursivelyExecuteBlock: viewBlock];
        }
    }
}


- (void) recursivePerformSelector: (SEL) selector {

}
@end