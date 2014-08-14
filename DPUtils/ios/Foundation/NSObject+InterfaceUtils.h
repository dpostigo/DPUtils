//
// Created by Dani Postigo on 5/10/14.
//

#import <Foundation/Foundation.h>

@interface NSObject (InterfaceUtils)

- (UIInterfaceOrientation) statusOrientation;
- (NSString *) stringForInterfaceOrientation: (UIInterfaceOrientation) orientation;
- (UIDeviceOrientation) deviceOrientation;
- (NSString *) deviceOrientationAsString;
- (NSString *) stringForDeviceOrientation: (UIDeviceOrientation) orientation;
- (NSString *) statusOrientationAsString;
- (BOOL) isLandscapeLeft;
- (BOOL) isLandscapeRight;
- (BOOL) isLandscape;
@end