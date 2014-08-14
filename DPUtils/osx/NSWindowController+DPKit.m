//
// Created by Dani Postigo on 3/9/14.
//

#import "NSWindowController+DPKit.h"

@implementation NSWindowController (DPKit)

+ (NSWindowController *) windowControllerForString: (NSString *) string {
    return [[NSClassFromString(string) alloc] init];
}
@end
