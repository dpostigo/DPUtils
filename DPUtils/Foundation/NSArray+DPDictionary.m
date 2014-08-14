//
// Created by Dani Postigo on 1/21/14.
//

#import "NSArray+DPDictionary.h"

@implementation NSArray (DPDictionary)

- (NSArray *) valuesForKey: (NSString *) key {
    NSMutableArray *ret = [[NSMutableArray alloc] init];
    for (NSDictionary *dictionary in self) {
        id value = [dictionary objectForKey: key];
        if (value) {
            [ret addObject: value];
        } else {

            [ret addObject: @"nil"];
        }
    }
    return ret;
}
@end