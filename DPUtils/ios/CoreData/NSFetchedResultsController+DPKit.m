//
// Created by Dani Postigo on 6/12/14.
//

#import "NSFetchedResultsController+DPKit.h"


@implementation NSFetchedResultsController (DPKit)


- (NSArray *)indexPathsForObjects:(NSArray *)objects {
    NSMutableArray *ret = [[NSMutableArray alloc] init];
    for (int j = 0; j < [objects count]; j++) {
        id object = objects[j];
        NSIndexPath *indexPath = [self indexPathForObject:object];
        if (indexPath != nil) {
            [ret addObject:indexPath];
        }
    }

    return ret;
}
@end