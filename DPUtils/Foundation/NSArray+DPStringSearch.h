//
// Created by Dani Postigo on 1/24/14.
//

#import <Foundation/Foundation.h>

@interface NSArray (DPStringSearch)

- (NSArray *) stringsStartingWithString: (NSString *) text;
- (NSArray *) stringsContainingString: (NSString *) text;
@end