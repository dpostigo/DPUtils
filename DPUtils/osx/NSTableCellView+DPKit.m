//
// Created by Dani Postigo on 1/31/14.
//

#import "NSTableCellView+DPKit.h"

@implementation NSTableCellView (DPKit)

- (NSOutlineView *) outlineView {
    NSOutlineView *ret = nil;
    if ([self.nextResponder isKindOfClass: [NSTableRowView class]]) {
        NSTableRowView *rowView = (NSTableRowView *) self.nextResponder;
        if ([rowView.nextResponder isKindOfClass: [NSOutlineView class]]) {
            ret = (NSOutlineView *) rowView.nextResponder;
        }

    }
    return ret;
}

@end