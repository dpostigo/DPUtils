//
// Created by Dani Postigo on 2/17/14.
//

#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>

@interface NSTreeController (DPKit)

- (NSIndexPath *) indexPathOfObject: (id) anObject;
- (NSIndexPath *) indexPathOfObject: (id) anObject inNodes: (NSArray *) nodes;
@end