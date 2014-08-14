//
// Created by Dani Postigo on 2/12/14.
//

#import "NSShadow+DPKit.h"
#import "NSImage+DPKitEtched.h"

@implementation NSImage (DPKitEtched)

- (void) drawEtchedInRect: (NSRect) rect {
    [NSGraphicsContext saveGraphicsState];

    NSBezierPath *path = [NSBezierPath bezierPathWithRoundedRect: rect xRadius: 5 yRadius: 5];
    [path addClip];

    self.size = rect.size;
    [self drawInRect: rect fromRect: NSZeroRect operation: NSCompositeSourceOver fraction: 1.0 respectFlipped: YES hints: nil];
    [NSGraphicsContext restoreGraphicsState];

}


- (void) drawEtchedInRect2: (NSRect) rect {
    NSGradient *gradient = [[NSGradient alloc] initWithStartingColor: [NSColor colorWithDeviceWhite: 0.0 alpha: 1.0] endingColor: [NSColor colorWithDeviceWhite: 0.0 alpha: 0.1]];
    //    NSGradient *gradient = [[NSGradient alloc] initWithStartingColor: [NSColor colorWithDeviceWhite: 0.99 alpha: 1.0] endingColor: [NSColor colorWithDeviceWhite: 0.99 alpha: 1.0]];
    NSShadow *outerShadow = [NSShadow shadowWithColor: [NSColor colorWithDeviceWhite: 1.0 alpha: 0.5] radius: 1 offset: NSMakeSize(0, 0)];

    [self drawEtchedImageWithColor: [NSColor blackColor] rect: rect gradient: gradient outerShadow: outerShadow];
}


- (void) drawEtchedImageWithColor: (NSColor *) color rect: (NSRect) rect gradient: (NSGradient *) gradient outerShadow: (NSShadow *) outerShadow {

    //    BOOL isFlipped = [NSGraphicsContext currentContext].isFlipped;


    //    CGFloat dropShadowOffsetY = rect.size.width <= 64.0 ? -1.0 : -2.0;
    //    outerShadow.shadowOffset = NSMakeSize(0, dropShadowOffsetY);
    CGFloat innerShadowBlurRadius = rect.size.width <= 32.0 ? 1.0 : 4.0;


    CGContextRef context = [[NSGraphicsContext currentContext] graphicsPort];
    NSGraphicsContext *graphicsContext = [NSGraphicsContext currentContext];
    CGContextSaveGState(context);

    BOOL wasFlipped = self.isFlipped;
    [self setFlipped: YES];


    //Create mask image:
    NSRect maskRect = rect;
    CGImageRef maskImage = [self CGImageForProposedRect: &maskRect context: graphicsContext hints: nil];

    //Draw image and white drop outerShadow:
    CGContextSetShadowWithColor(context, outerShadow.shadowOffset, outerShadow.shadowBlurRadius, [outerShadow.shadowColor CGColor]);
    //    [self lockFocusFlipped: YES];
    [self drawInRect: maskRect fromRect: NSZeroRect operation: NSCompositeSourceOver fraction: 1.0 respectFlipped: NO hints: nil];
    //    [self unlockFocus];


    //Clip drawing to mask:
    CGContextClipToMask(context, NSRectToCGRect(maskRect), maskImage);
    [gradient drawInRect: maskRect angle: 90.0];
    CGContextSetShadowWithColor(context, CGSizeMake(0, -1), innerShadowBlurRadius, [[NSColor blackColor] CGColor]);


    //Draw inner outerShadow with inverted mask:
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGContextRef maskContext = CGBitmapContextCreate(NULL, CGImageGetWidth(maskImage), CGImageGetHeight(maskImage), 8, CGImageGetWidth(maskImage) * 4, colorSpace, (CGBitmapInfo) kCGImageAlphaPremultipliedLast);
    CGColorSpaceRelease(colorSpace);
    CGContextSetBlendMode(maskContext, kCGBlendModeXOR);
    CGContextDrawImage(maskContext, maskRect, maskImage);
    CGContextSetFillColorWithColor(maskContext, [NSColor redColor].CGColor);
    CGContextFillRect(maskContext, maskRect);

    CGContextRestoreGState(context);

    [self setFlipped: wasFlipped];
}


- (void) drawEtchedImageWithColor2: (NSColor *) color rect: (NSRect) rect gradient: (NSGradient *) gradient outerShadow: (NSShadow *) outerShadow {

    //    CGFloat dropShadowOffsetY = rect.size.width <= 64.0 ? -1.0 : -2.0;
    //    outerShadow.shadowOffset = NSMakeSize(0, dropShadowOffsetY);

    CGFloat innerShadowBlurRadius = rect.size.width <= 32.0 ? 1.0 : 4.0;

    CGContextRef context = [[NSGraphicsContext currentContext] graphicsPort];
    CGContextSaveGState(context);

    //Create mask image:
    NSRect maskRect = rect;
    CGImageRef maskImage = [self CGImageForProposedRect: &maskRect context: [NSGraphicsContext currentContext] hints: nil];

    //Draw image and white drop outerShadow:
    CGContextSetShadowWithColor(context, outerShadow.shadowOffset, outerShadow.shadowBlurRadius, [outerShadow.shadowColor CGColor]);
    [self drawInRect: maskRect fromRect: NSMakeRect(0, 0, self.size.width, self.size.height) operation: NSCompositeSourceOver fraction: 1.0];

    //Clip drawing to mask:
    CGContextClipToMask(context, NSRectToCGRect(maskRect), maskImage);

    //  Draw gradient:
    [gradient drawInRect: maskRect angle: 90.0];
    CGContextSetShadowWithColor(context, CGSizeMake(0, -1), innerShadowBlurRadius, [[NSColor blackColor] CGColor]);

    //Draw inner outerShadow with inverted mask:
    CGColorSpaceRef colorSpace = CGColorSpaceCreateDeviceRGB();
    CGContextRef maskContext = CGBitmapContextCreate(NULL, CGImageGetWidth(maskImage), CGImageGetHeight(maskImage), 8, CGImageGetWidth(maskImage) * 4, colorSpace, (CGBitmapInfo) kCGImageAlphaPremultipliedLast);

    CGColorSpaceRelease(colorSpace);
    CGContextSetBlendMode(maskContext, kCGBlendModeXOR);
    CGContextDrawImage(maskContext, maskRect, maskImage);
    CGContextSetFillColorWithColor(maskContext, [NSColor redColor].CGColor);
    CGContextFillRect(maskContext, maskRect);

    CGContextRestoreGState(context);
}

@end