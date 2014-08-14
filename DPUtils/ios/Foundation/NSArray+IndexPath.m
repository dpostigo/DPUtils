//
// Created by Dani Postigo on 6/12/14.
//

#import "NSArray+IndexPath.h"


@implementation NSArray (IndexPath)


- (BOOL)containsIndexPath:(NSIndexPath *)selectedIndexPath {
    for (int j = 0; j < [self count]; j++) {
        NSIndexPath *indexPath = self[j];
        if ([selectedIndexPath compare:indexPath] == NSOrderedSame) {
            return YES;
        }
    }
    return NO;

}
@end