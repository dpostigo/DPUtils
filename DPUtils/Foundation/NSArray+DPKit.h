//
// Created by Dani Postigo on 1/10/14.
//

#import <Foundation/Foundation.h>

@interface NSArray (DPKit)

- (id) firstObject;
- (NSArray *) objectsOfType: (Class) class;
- (NSArray *) classes;
- (BOOL) containsClass: (Class) class;
- (NSArray *) sortedArrayUsingDescriptor: (NSSortDescriptor *) descriptor;
@end