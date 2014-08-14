//
// Created by Dani Postigo on 1/6/14.
// Copyright (c) 2014 Dani Postigo. All rights reserved.
//

#import "NSBezierPath+DPKit.h"

@implementation NSBezierPath (DPKit)

+ (NSBezierPath *) popoverBezierPathWithRect: (NSRect) aRect radius: (CGFloat) radius arrowSize: (NSSize) arrowSize direction: (DPArrowDirection) arrowDirection {
    const CGFloat arrowWidth = arrowSize.width;
    const CGFloat arrowHeight = arrowSize.height;
    const CGFloat inset = radius + arrowHeight;


    NSRect drawingRect = NSInsetRect(aRect, inset, inset);

    if (arrowDirection == DPArrowDirectionDown) {

    } else if (arrowDirection == DPArrowDirectionRight) {

    } else if (arrowDirection == DPArrowDirectionUp) {
        drawingRect = NSInsetRect(aRect, radius, inset);

    } else if (arrowDirection == DPArrowDirectionLeft) {

    }

    const CGFloat minX = NSMinX(drawingRect);
    const CGFloat maxX = NSMaxX(drawingRect);
    const CGFloat minY = NSMinY(drawingRect);
    const CGFloat maxY = NSMaxY(drawingRect);

    NSBezierPath *path = [NSBezierPath bezierPath];
    [path setLineJoinStyle: NSRoundLineJoinStyle];

    // Bottom left corner
    [path appendBezierPathWithArcWithCenter: NSMakePoint(minX, minY) radius: radius startAngle: 180.0 endAngle: 270.0];
    if (arrowDirection == DPArrowDirectionDown) {
        CGFloat midX = NSMidX(drawingRect);
        NSPoint points[3];
        points[0] = NSMakePoint(floor(midX - (arrowWidth / 2.0)), minY - radius); // Starting point
        points[1] = NSMakePoint(floor(midX), points[0].y - arrowHeight); // Arrow tip
        points[2] = NSMakePoint(floor(midX + (arrowWidth / 2.0)), points[0].y); // Ending point
        [path appendBezierPathWithPoints: points count: 3];
    }
    // Bottom right corner
    [path appendBezierPathWithArcWithCenter: NSMakePoint(maxX, minY) radius: radius startAngle: 270.0 endAngle: 360.0];
    if (arrowDirection == DPArrowDirectionRight) {
        CGFloat midY = NSMidY(drawingRect);
        NSPoint points[3];
        points[0] = NSMakePoint(maxX + radius, floor(midY - (arrowWidth / 2.0)));
        points[1] = NSMakePoint(points[0].x + arrowHeight, floor(midY));
        points[2] = NSMakePoint(points[0].x, floor(midY + (arrowWidth / 2.0)));
        [path appendBezierPathWithPoints: points count: 3];
    }
    // Top right corner
    [path appendBezierPathWithArcWithCenter: NSMakePoint(maxX, maxY) radius: radius startAngle: 0.0 endAngle: 90.0];
    if (arrowDirection == DPArrowDirectionUp) {
        CGFloat midX = NSMidX(drawingRect);
        NSPoint points[3];
        points[0] = NSMakePoint(floor(midX + (arrowWidth / 2.0)), maxY + radius);
        points[1] = NSMakePoint(floor(midX), points[0].y + arrowHeight);
        points[2] = NSMakePoint(floor(midX - (arrowWidth / 2.0)), points[0].y);
        [path appendBezierPathWithPoints: points count: 3];
    }
    // Top left corner
    [path appendBezierPathWithArcWithCenter: NSMakePoint(minX, maxY) radius: radius startAngle: 90.0 endAngle: 180.0];
    if (arrowDirection == DPArrowDirectionLeft) {
        CGFloat midY = NSMidY(drawingRect);
        NSPoint points[3];
        points[0] = NSMakePoint(minX - radius, floor(midY + (arrowWidth / 2.0)));
        points[1] = NSMakePoint(points[0].x - arrowHeight, floor(midY));
        points[2] = NSMakePoint(points[0].x, floor(midY - (arrowWidth / 2.0)));
        [path appendBezierPathWithPoints: points count: 3];
    }
    [path closePath];

    return path;
}


- (CGPathRef) quartzPath {
    int i;

    // Need to begin a path here.
    CGPathRef immutablePath = NULL;

    // Then draw the path elements.
    NSInteger numElements = [self elementCount];
    if (numElements > 0) {
        CGMutablePathRef path = CGPathCreateMutable();
        NSPoint points[3];
        BOOL didClosePath = YES;

        for (i = 0; i < numElements; i++) {
            switch ([self elementAtIndex: i associatedPoints: points]) {
                case NSMoveToBezierPathElement:
                    CGPathMoveToPoint(path, NULL, points[0].x, points[0].y);
                    break;

                case NSLineToBezierPathElement:
                    CGPathAddLineToPoint(path, NULL, points[0].x, points[0].y);
                    didClosePath = NO;
                    break;

                case NSCurveToBezierPathElement:
                    CGPathAddCurveToPoint(path, NULL, points[0].x, points[0].y,
                            points[1].x, points[1].y,
                            points[2].x, points[2].y);
                    didClosePath = NO;
                    break;

                case NSClosePathBezierPathElement:
                    CGPathCloseSubpath(path);
                    didClosePath = YES;
                    break;
            }
        }

        // Be sure the path is closed or Quartz may not do valid hit detection.
        if (!didClosePath)
            CGPathCloseSubpath(path);

        immutablePath = CGPathCreateCopy(path);
        CGPathRelease(path);
    }

    return immutablePath;
}

@end