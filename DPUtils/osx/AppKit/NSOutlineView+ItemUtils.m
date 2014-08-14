//
// Created by Dani Postigo on 1/15/14.
//

#import "NSOutlineView+ItemUtils.h"

@implementation NSOutlineView (ItemUtils)

- (id) firstItem {
    return [self itemAtRow: 0];
}
@end