//
// Created by Dani Postigo on 2/17/14.
//

#import "NSTreeController+DPKit.h"

@implementation NSTreeController (DPKit)

- (NSIndexPath *) indexPathOfObject: (id) anObject {
    return [self indexPathOfObject: anObject inNodes: [[self arrangedObjects] childNodes]];
}

- (NSIndexPath *) indexPathOfObject: (id) anObject inNodes: (NSArray *) nodes {
    for (NSTreeNode *node in nodes) {
        if ([[node representedObject] isEqual: anObject])
            return [node indexPath];
        if ([[node childNodes] count]) {
            NSIndexPath *path = [self indexPathOfObject: anObject inNodes: [node childNodes]];
            if (path)
                return path;
        }
    }
    return nil;
}
@end