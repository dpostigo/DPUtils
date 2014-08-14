//
// Created by Dani Postigo on 1/29/14.
//

#import "NSFileManager+DPKit.h"
#import "NSBundle+DPKit.h"

@implementation NSFileManager (DPKit)

+ (NSString *) applicationSupportDirectory {
    return [NSSearchPathForDirectoriesInDomains(NSApplicationSupportDirectory, NSUserDomainMask, YES) firstObject];
}


+ (NSString *) applicationSupportFolder {
    NSString *ret = [[NSFileManager applicationSupportDirectory] stringByAppendingPathComponent: [NSBundle bundleDisplayName]];

    return ret;
}


@end