//
// Created by Dani Postigo on 5/14/14.
//

#import "UIFont+DPKit.h"

@implementation UIFont (DPKit)

+ (void)printFontNames {
    for (NSString *family in [UIFont familyNames]) {
        NSLog(@"%@", family);

        for (NSString *name in [UIFont fontNamesForFamilyName:family]) {
            NSLog(@"  %@", name);
        }
    }
}


+ (CGFloat)kerningValueForSize:(CGFloat)pointSize {
    return 60 * (pointSize / 1000);;
}

@end