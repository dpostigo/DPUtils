//
// Created by Dani Postigo on 2/3/14.
//

#import "NSObject+DPKitObservation.h"

@implementation NSObject (DPKitObservation)

- (NSString *) stringForKeyValueChange: (NSKeyValueChange) change {

    NSString *ret = nil;
    switch (change) {

        case NSKeyValueChangeSetting :
            ret = @"NSKeyValueChangeSetting";
            break;
        case NSKeyValueChangeInsertion :
            ret = @"NSKeyValueChangeInsertion";
            break;
        case NSKeyValueChangeRemoval :
            ret = @"NSKeyValueChangeRemoval";
            break;
        case NSKeyValueChangeReplacement :
            ret = @"NSKeyValueChangeReplacement";
            break;
    }
    return ret;
}
@end