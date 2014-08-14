//
// Created by Dani Postigo on 1/11/14.
//

#import "NSMutableAttributedString+DPKit.h"
#import "NSAttributedString+DPKit.h"

@implementation NSMutableAttributedString (DPKit)

- (void)addAttribute:(NSString *)name value:(id)value {
    [self addAttribute:name value:value range:self.range];
}

- (void)setKerning:(CGFloat)kerningSize {
    CGFloat pointSize = self.fontValue.pointSize;
    kerningSize = 60 * (pointSize / 1000);
    [self addAttribute:NSKernAttributeName value:@(kerningSize)];
}


- (CGFloat)kerning {
    return [[self attribute:NSKernAttributeName atIndex:0 effectiveRange:NULL] floatValue];
}


- (NSDictionary *)currentAttributes {
    return [self attributesAtIndex:0 effectiveRange:NULL];
}

- (UIFont *)fontValue {
    return (UIFont *) [self attribute:NSFontAttributeName atIndex:0 effectiveRange:NULL];
}
@end