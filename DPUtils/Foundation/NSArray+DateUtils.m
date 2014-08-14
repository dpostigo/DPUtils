//
// Created by Dani Postigo on 1/13/14.
//

#import "NSArray+DateUtils.h"
#import "NSDate+DPKit.h"

@implementation NSArray (DateUtils)

- (NSArray *) uniqueDates {
    NSMutableArray *ret = [[NSMutableArray alloc] init];
    for (NSDate *date in self) {
        if ([date isUniqueDateWithin: ret]) {
            [ret addObject: date];
        }
    }
    return ret;
}


@end