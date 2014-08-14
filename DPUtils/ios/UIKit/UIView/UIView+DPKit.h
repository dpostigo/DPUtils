//
//  UIView+Addons.h
//  NewsToons
//
//  Created by Daniela Postigo on 3/15/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (DPKit)



+ (UIView *) viewWithColor: (UIColor *) color;
- (void) prettify;
- (void) prettifyWithBackgroundColor: (UIColor *) bgColor;
- (void) prettifyWithBackgroundColor: (UIColor *) bgColor borderColor: (UIColor *) borderColor;
- (void) prettifyWithBackgroundColor: (UIColor *) aBackgroundColor borderColor: (UIColor *) aBorderColor shadowColor: (UIColor *) aShadowColor;


- (void) rasterize;
- (void) unrasterize;
- (void) setRoundedView: (UIImageView *) roundedView toDiameter: (float) newSize;

- (void) positionAtEdge: (UIRectEdge) edge;
- (void) positionAtEdge: (UIRectEdge) edge hidden: (BOOL) flag;
@end
