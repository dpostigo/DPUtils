//
// Created by Dani Postigo on 2/12/14.
//

#import <Foundation/Foundation.h>

@interface NSImage (DPKitEtched)

- (void) drawEtchedInRect2: (NSRect) rect;
- (void) drawEtchedImageWithColor: (NSColor *) color rect: (NSRect) rect gradient: (NSGradient *) gradient outerShadow: (NSShadow *) outerShadow;
- (void) drawEtchedImageWithColor2: (NSColor *) color rect: (NSRect) rect gradient: (NSGradient *) gradient outerShadow: (NSShadow *) outerShadow;
@end