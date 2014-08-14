//
// Created by Dani Postigo on 1/24/14.
//

#import "NSWindow+DPKit.h"

@implementation NSWindow (DPKit)

- (void) centerOnScreen {
    [self centerOnScreen: NO];
}


- (void) centerOnScreen: (BOOL) animated {
    [self setFrame: self.centeredRectOnScreen display: YES animate: animated];
}

- (void) centerHorizontallyOnScreen: (BOOL) animated {
    NSRect frame = self.frame;
    CGFloat xPos = NSWidth([NSScreen mainScreen].frame) / 2 - NSWidth(frame) / 2;
    NSRect windowFrame = NSMakeRect(xPos, frame.origin.y, NSWidth(frame), NSHeight(frame));
    [self setFrame: windowFrame display: YES animate: animated];
}


- (NSRect) centeredRectOnScreen {
    NSScreen *screen = [NSScreen mainScreen];
    CGFloat xPos = NSWidth(screen.frame) / 2 - NSWidth(self.frame) / 2;
    CGFloat yPos = (NSHeight(screen.frame) - NSHeight(self.frame)) / 2;
    NSRect windowFrame = NSMakeRect(xPos, yPos, NSWidth(self.frame), NSHeight(self.frame));
    return windowFrame;

}

- (NSView *) windowThemeFrame {
    return [[self contentView] superview];
}

- (NSView *) contentAsView {
    return [self contentView];
}


- (NSRect) bounds {
    NSRect ret = self.frame;
    ret.origin = NSMakePoint(0, 0);
    return ret;
}


typedef void (^DPKitWindowBlock)(NSWindow *window);

- (void) recursivelyExecuteBlock: (DPKitWindowBlock) viewBlock {

    NSArray *childWindows = [self childWindows];

    if ([childWindows count] == 0) {
        viewBlock(self);
        return;
    } else {
        for (NSWindow *childWindow in childWindows) {
            [childWindow recursivelyExecuteBlock: viewBlock];
        }
    }
}


- (void) closeChildWindows {
    if ([self.childWindows count] > 0) {
        NSArray *childWindows = [NSArray arrayWithArray: self.childWindows];
        for (NSWindow *window in childWindows) {
            [window close];
        }
    }

}
@end