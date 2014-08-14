//
// Created by Dani Postigo on 1/6/14.
// Copyright (c) 2014 Dani Postigo. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef NS_ENUM(NSRectEdge, DPArrowDirection) {
    INPopoverArrowDirectionUndefined = 0,
    DPArrowDirectionLeft = NSMaxXEdge,
    DPArrowDirectionRight = NSMinXEdge,
    DPArrowDirectionUp = NSMaxYEdge,
    DPArrowDirectionDown = NSMinYEdge
};

@interface NSBezierPath (DPKit)

+ (NSBezierPath *) popoverBezierPathWithRect: (NSRect) aRect radius: (CGFloat) radius arrowSize: (NSSize) arrowSize direction: (enum DPArrowDirection) arrowDirection;
- (CGPathRef) quartzPath;
@end