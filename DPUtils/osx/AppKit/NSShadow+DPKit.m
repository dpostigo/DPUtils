//
// Created by Dani Postigo on 1/29/14.
//

#import "NSShadow+DPKit.h"

@implementation NSShadow (DPKit)


+ (NSShadow *) shadowWithColor: (NSColor *) color radius: (CGFloat) radius {
    return [NSShadow shadowWithColor: color radius: radius offset: NSMakeSize(0, 1)];
}

+ (NSShadow *) shadowWithColor: (NSColor *) color radius: (CGFloat) radius offset: (NSSize) offset {
    NSShadow *dropShadow = [[NSShadow alloc] init];
    dropShadow.shadowColor = color;
    dropShadow.shadowOffset = offset;
    dropShadow.shadowBlurRadius = radius;
    return dropShadow;
}
@end