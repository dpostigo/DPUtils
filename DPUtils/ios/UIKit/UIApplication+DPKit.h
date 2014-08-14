//
// Created by Dani Postigo on 5/4/14.
//

#import <Foundation/Foundation.h>

@interface UIApplication (DPKit)

+ (NSString *) interfaceOrientationAsString: (UIInterfaceOrientation) orientation;

+ (NSString *) statusBarOrientationAsString;
@end