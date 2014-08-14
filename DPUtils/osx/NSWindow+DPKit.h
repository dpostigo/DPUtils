//
// Created by Dani Postigo on 1/24/14.
//

#import <Foundation/Foundation.h>

@interface NSWindow (DPKit)

- (void) centerOnScreen;
- (void) centerOnScreen: (BOOL) animated;
- (void) centerHorizontallyOnScreen: (BOOL) animated;
- (NSRect) centeredRectOnScreen;
- (NSView *) windowThemeFrame;
- (NSView *) contentAsView;
- (NSRect) bounds;
- (void) recursivelyExecuteBlock: (void (^)(NSWindow *)) viewBlock;
- (void) closeChildWindows;
@end