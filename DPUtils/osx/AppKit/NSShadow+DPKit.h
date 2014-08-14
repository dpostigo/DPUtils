//
// Created by Dani Postigo on 1/29/14.
//

#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>

@interface NSShadow (DPKit)

+ (NSShadow *) shadowWithColor: (NSColor *) color radius: (CGFloat) radius;
+ (NSShadow *) shadowWithColor: (NSColor *) color radius: (CGFloat) radius offset: (NSSize) offset;
@end