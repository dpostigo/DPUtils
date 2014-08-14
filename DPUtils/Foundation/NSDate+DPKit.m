//
// Created by Dani Postigo on 1/13/14.
//

#import <JMSimpleDate/NSDate+JMSimpleDate.h>
#import "JMSimpleDate.h"
#import "NSDate+DPKit.h"

@implementation NSDate (DPKit)

- (BOOL) isUniqueDateWithin: (NSArray *) dates {
    BOOL ret = YES;
    for (NSDate *date in dates) {
        if ([self isOnSameDate: date ignoringTimeOfDay: YES]) {
            ret = NO;
            break;
        }
    }

    return ret;
}

@end