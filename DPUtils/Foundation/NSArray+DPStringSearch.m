//
// Created by Dani Postigo on 1/24/14.
//

#import "NSArray+DPStringSearch.h"
#import "NSString+DPKitUtils.h"

@implementation NSArray (DPStringSearch)

- (NSArray *) stringsStartingWithString: (NSString *) text {
    NSMutableArray *ret = [[NSMutableArray alloc] init];

    for (NSString *string in self) {
        if ([string.uppercaseString hasPrefix: text.uppercaseString] || [string.uppercaseString hasPrefix: text.uppercaseString]) {
            [ret addObject: string];
        }
    }
    return ret;
}

- (NSArray *) stringsContainingString: (NSString *) text {
    NSMutableArray *ret = [[NSMutableArray alloc] init];

    for (NSString *string in self) {
        if ([string.uppercaseString containsString: text.uppercaseString]) {
            [ret addObject: string];
        }
    }
    return ret;
}
@end