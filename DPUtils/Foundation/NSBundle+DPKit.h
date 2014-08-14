//
// Created by Dani Postigo on 1/26/14.
//

#import <Foundation/Foundation.h>

@interface NSBundle (DPKit)

- (NSArray *) windowNibs;
- (NSArray *) resourceContents;
+ (NSString *) bundleDisplayName;
@end