//
// Created by Dani Postigo on 6/19/14.
//

#import <Foundation/Foundation.h>

@interface NSObject (Delay)
- (void)performBlock:(void (^)())block withDelay:(double)delay;
@end