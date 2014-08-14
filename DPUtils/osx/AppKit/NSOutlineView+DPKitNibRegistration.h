//
// Created by Dani Postigo on 2/9/14.
//

#import <Foundation/Foundation.h>
#import <AppKit/AppKit.h>

@interface NSOutlineView (DPKitNibRegistration)

- (void) registerNibName: (NSString *) nibName forIdentifier: (NSString *) identifier;
@end