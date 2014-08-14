//
// Created by Dani Postigo on 3/11/14.
//

#import "NSObjectController+DPKit.h"

@implementation NSObjectController (DPKit)

- (id) selectionObject {
    return [self valueForKeyPath: @"selection.self"];
}
@end