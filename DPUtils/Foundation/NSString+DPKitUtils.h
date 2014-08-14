//
// Created by Dani Postigo on 1/24/14.
//

#import <Foundation/Foundation.h>

@interface NSString (DPKitUtils)

- (NSURL *) URL;
- (BOOL) containsString: (NSString *) substring;
- (NSString *) capitalizedSentence;
- (NSString *) decapitalize;
- (NSString *) filenameEscapedString;
- (NSString *) firstWord;
@end