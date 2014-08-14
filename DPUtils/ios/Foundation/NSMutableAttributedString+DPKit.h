//
// Created by Dani Postigo on 1/11/14.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface NSMutableAttributedString (DPKit)

- (void) addAttribute: (NSString *) name value: (id) value;
- (UIFont *) fontValue;
@property(nonatomic) CGFloat kerning;


@end