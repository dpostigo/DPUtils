//
// Created by Dani Postigo on 1/27/14.
//

#import "NSMutableArray+DPKit.h"

@implementation NSMutableArray (DPKit)


- (void) sortUsingDescriptor: (NSSortDescriptor *) descriptor {
    [self sortUsingDescriptors: [NSArray arrayWithObject: descriptor]];
}
@end