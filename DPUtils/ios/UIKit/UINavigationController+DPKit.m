//
// Created by Dani Postigo on 5/26/14.
//

#import "UINavigationController+DPKit.h"

@implementation UINavigationController (DPKit)

- (UIViewController *) controllerBeforeController: (UIViewController *) controller {
    UIViewController *ret = nil;
    NSArray *viewControllers = self.viewControllers;

    if ([viewControllers containsObject: controller]) {
        NSUInteger index = [viewControllers indexOfObject: controller];

        if (index > 0) {
            ret = [self.viewControllers objectAtIndex: index - 1];
        }
    }
    return ret;

}
@end