//
// Created by Dani Postigo on 3/18/14.
//

#import "NSApplication+DPKit.h"
#import "NSBundle+DPKit.h"

@implementation NSApplication (DPKit)

- (void) createDeveloperMenu {
    NSMenu *menu = [NSApplication sharedApplication].menu;

    NSMenuItem *developerItem = [menu itemWithTitle: @"Developer"];

    if ([developerItem hasSubmenu]) {
        NSMenu *submenu = developerItem.submenu;
        [submenu removeAllItems];

        [submenu addItemWithTitle: @"Browse windows..." action: nil keyEquivalent: @""];

        //        windowNibs = [[[NSBundle mainBundle] windowNibs] mutableCopy];
        //        [windowNibs removeObject: @"CounterWindow.nib"];
        //        [windowNibs removeObject: @"EmptyWindow.nib"];
        //
        //        for (int j = 0; j < [windowNibs count]; j++) {
        //            NSString *string = [windowNibs objectAtIndex: j];
        //            NSString *title = [string stringByReplacingOccurrencesOfString: @"Window.nib" withString: @" Window"];
        //            [submenu addItemWithTitle: title action: @selector(handleWindowMenuItem:) keyEquivalent: [NSString stringWithFormat: @"%i", j + 1]];
        //        }
    }

}
@end