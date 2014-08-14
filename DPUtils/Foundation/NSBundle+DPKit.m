//
// Created by Dani Postigo on 1/26/14.
//

#import "NSString+DPKitUtils.h"
#import "NSBundle+DPKit.h"

@implementation NSBundle (DPKit)

- (NSArray *) windowNibs {
    NSMutableArray *ret = [[NSMutableArray alloc] init];

    NSArray *resources = [self resourceContents];
    for (NSString *nibName in resources) {
        if ([nibName containsString: @"Window.nib"]) {
            [ret addObject: nibName];
        }
    }
    return ret;
}

- (NSArray *) resourceContents {
    NSArray *ret = nil;
    NSString *resourcePath = [self resourcePath];

    NSError *error;
    NSArray *directoryContents = [[NSFileManager defaultManager] contentsOfDirectoryAtPath: resourcePath error: &error];

    if (!error) {
        ret = directoryContents;
    }
    return ret;
}

+ (NSString *) bundleDisplayName {
    NSString *ret = [[[NSBundle mainBundle] infoDictionary] objectForKey: @"CFBundleDisplayName"];
    if (ret == nil) {
        ret = [[[NSBundle mainBundle] infoDictionary] objectForKey: @"CFBundleName"];
    }
    return ret;
}


@end