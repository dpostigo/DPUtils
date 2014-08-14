//
// Created by Dani Postigo on 6/19/14.
//

#import "NSObject+Delay.h"


@implementation NSObject (Delay)


- (void)performBlock:(void (^)())block withDelay:(double)delay {
    double delayInSeconds = delay;
    dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, (int64_t) (delayInSeconds * NSEC_PER_SEC));
    dispatch_after(popTime, dispatch_get_main_queue(), block);
}
@end