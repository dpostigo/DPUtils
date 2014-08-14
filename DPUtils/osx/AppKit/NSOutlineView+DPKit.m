//
// Created by Dani Postigo on 2/17/14.
//

#import "NSOutlineView+DPKit.h"

@implementation NSOutlineView (DPKit)

- (void) expandAllItems {
    NSArray *groupItems = self.groupItems;
    for (id item in groupItems) {
        [self expandItem: item];
    }
}

//
//- (void) deleteSelectedItem {
//
//    if ([self numberOfSelectedRows] == 0) return;
//
//    NSUInteger index = [self selectedRow];
//
//    [documentController deleteItemWithIndex: index];
//}

- (NSArray *) groupItems {
    NSMutableArray *ret = [[NSMutableArray alloc] init];

    for (int j = 0; j < self.numberOfRows; j++) {
        id item = [self itemAtRow: j];

        if ([self isExpandable: item]) {
            [ret addObject: item];
        }
    }

    return ret;
}
@end