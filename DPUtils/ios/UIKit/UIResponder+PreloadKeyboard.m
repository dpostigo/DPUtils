//
// Created by Dani Postigo on 5/29/14.
//

#import "UIResponder+PreloadKeyboard.h"

@implementation UIResponder (PreloadKeyboard)

- (void) preloadKeyboard {
    UITextField *lagFreeField = [[UITextField alloc] init];
    [self.mainWindow addSubview: lagFreeField];
    [lagFreeField becomeFirstResponder];
    [lagFreeField resignFirstResponder];
    [lagFreeField removeFromSuperview];
}

- (UIWindow *) mainWindow {
    return [[[UIApplication sharedApplication] windows] lastObject];
}

@end