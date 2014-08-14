//
// Created by Dani Postigo on 1/24/14.
//

#import "NSString+DPKitUtils.h"

@implementation NSString (DPKitUtils)

- (NSURL *)URL {
    return [NSURL URLWithString:self];
}

- (BOOL)containsString:(NSString *)substring {
    NSRange range = [self rangeOfString:substring];
    BOOL found = (range.location != NSNotFound);
    return found;
}


- (NSString *)capitalizedSentence {
    NSString *ret = self;
    if ([self length] > 0) {
        ret = [NSString stringWithFormat:@"%@%@", [[self substringToIndex:1] uppercaseString], [self substringFromIndex:1]];
    }
    return ret;
}

- (NSString *)decapitalize {
    NSString *ret = self;
    if ([self length] > 0) {
        ret = [NSString stringWithFormat:@"%@%@", [[self substringToIndex:1] lowercaseString], [self substringFromIndex:1]];
    }
    return ret;
}

- (NSString *)filenameEscapedString {
    NSCharacterSet *illegalFileNameCharacters = [NSCharacterSet characterSetWithCharactersInString:@"/\\?%*|\"<>"];
    return [[self componentsSeparatedByCharactersInSet:illegalFileNameCharacters] componentsJoinedByString:@""];
}


- (NSString *)firstWord {
    NSString *ret = nil;

    NSRange range = [self rangeOfString:@" "];
    ret = [self substringWithRange:NSMakeRange(0, self.length - range.location)];
    return ret;


}
@end