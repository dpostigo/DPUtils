//
// Created by Dani Postigo on 3/9/14.
//

#import "NSViewController+DPKit.h"

@implementation NSViewController (DPKit)

+ (NSViewController *) controllerForString: (NSString *) string {
    return [[NSClassFromString(string) alloc] init];
}
@end