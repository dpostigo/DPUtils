//
// Created by Dani Postigo on 1/26/14.
//

#import "NSDictionary+DPKit.h"

@implementation NSDictionary (DPKit)

- (NSDictionary *) dictionaryReplacingKey: (NSString *) key withKey: (NSString *) newKey {

    NSMutableDictionary *ret = [[NSMutableDictionary alloc] init];
    NSArray *keys = [self allKeys];
    for (NSString *aKey in keys) {
        if ([aKey isEqualToString: key]) {
            [ret setObject: [self objectForKey: aKey] forKey: newKey];
        } else {
            [ret setObject: [self objectForKey: aKey] forKey: aKey];
        }
    }

    return ret;
}
@end