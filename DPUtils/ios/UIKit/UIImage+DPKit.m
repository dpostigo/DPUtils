//
// Created by Dani Postigo on 5/1/14.
//

#import "UIImage+DPKit.h"

@implementation UIImage (DPKit)

+ (UIImage *) imageWithColor: (UIColor *) color {
    CGRect rect = CGRectMake(0.0f, 0.0f, 1.0f, 1.0f);
    UIGraphicsBeginImageContext(rect.size);
    CGContextRef context = UIGraphicsGetCurrentContext();

    CGContextSetFillColorWithColor(context, [color CGColor]);
    CGContextFillRect(context, rect);

    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return image;
}
@end