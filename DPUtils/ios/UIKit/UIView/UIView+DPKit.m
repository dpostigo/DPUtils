//
//  UIView+Addons.m
//  NewsToons
//
//  Created by Daniela Postigo on 3/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "UIView+DPKit.h"
#import "UIView+DPPositioningUtils.h"

@implementation UIView (DPKit)

+ (UIView *) viewWithColor: (UIColor *) color {
    UIView *ret = [[UIView alloc] init];
    ret.backgroundColor = color;
    return ret;
}

- (void) prettify {
    [self prettifyWithBackgroundColor: [UIColor colorWithWhite: 0.98 alpha: 1.0] borderColor: [UIColor whiteColor] shadowColor: [UIColor blackColor]];
}


- (void) prettifyWithBackgroundColor: (UIColor *) bgColor {
    CGFloat red = 0.0, green = 0.0, blue = 0.0, alpha = 0.0;
    [bgColor getRed: &red green: &green blue: &blue alpha: &alpha];
    CGFloat offset = 0.2;
    UIColor *borderColor = [UIColor colorWithRed: (red + offset) green: (green + offset) blue: (blue + offset) alpha: alpha];

    [self prettifyWithBackgroundColor: bgColor borderColor: borderColor shadowColor: [UIColor blackColor]];
}


- (void) prettifyWithBackgroundColor: (UIColor *) bgColor borderColor: (UIColor *) borderColor {
    [self prettifyWithBackgroundColor: bgColor borderColor: borderColor shadowColor: [UIColor blackColor]];
}


- (void) prettifyWithBackgroundColor: (UIColor *) aBackgroundColor borderColor: (UIColor *) aBorderColor shadowColor: (UIColor *) aShadowColor {
    self.backgroundColor = aBackgroundColor;
    self.layer.borderColor = aBorderColor.CGColor;
    self.layer.shadowColor = aShadowColor.CGColor;
    self.clipsToBounds = NO;
    self.layer.shadowOffset = CGSizeMake(0, 1);
    self.layer.shadowOpacity = 0.5;
    self.layer.shadowRadius = 1.0;
    self.layer.masksToBounds = NO;
    self.layer.borderWidth = 1.0;
}


- (void) rasterize {
    self.layer.shouldRasterize = YES;
    self.layer.rasterizationScale = [[UIScreen mainScreen] scale];
}


- (void) unrasterize {
    self.layer.shouldRasterize = NO;
}


- (void) setRoundedView: (UIImageView *) roundedView toDiameter: (float) newSize {
    CGPoint saveCenter = roundedView.center;
    CGRect newFrame = CGRectMake(roundedView.frame.origin.x, roundedView.frame.origin.y, newSize, newSize);
    roundedView.frame = newFrame;
    roundedView.layer.cornerRadius = newSize / 2.0;
    roundedView.center = saveCenter;
}


/*

- (UILabel*) copyLabelFrom: (UILabel*) label {
    UILabel *newLabel = [[[UILabel alloc] initWithFrame:label.frame] autorelease];
    newLabel.backgroundColor = label.backgroundColor;
    newLabel.textColor = label.textColor;
    newLabel.textAlignment = label.textAlignment;
    newLabel.text = label.text;
    newLabel.font = label.font;
    return newLabel;

}
 
 */


- (void) positionAtEdge: (UIRectEdge) edge {
    [self positionAtEdge: edge hidden: NO];
}


- (void) positionAtEdge: (UIRectEdge) edge hidden: (BOOL) flag {

    UIView *superview = self.superview;

    switch (edge) {
        case UIRectEdgeLeft :
            self.left = flag ? -self.width : 0;
            self.centerY = superview.height / 2;
            break;

        case UIRectEdgeRight :
            self.left = flag ? superview.width : superview.width - self.width;
            self.centerY = superview.height / 2;
            break;

        case UIRectEdgeTop :
            self.top = flag ? -self.height : 0;
            self.centerX = superview.width / 2;
            break;

        case UIRectEdgeBottom :
            self.top = flag ? superview.height : superview.height - self.height;
            self.centerX = superview.width / 2;
            break;

        default :
            break;

    }
}

@end
