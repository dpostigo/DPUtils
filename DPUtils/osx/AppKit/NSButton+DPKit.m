//
// Created by Dani Postigo on 1/29/14.
//

#import "NSButton+DPKit.h"

@implementation NSButton (DPKit)



- (void) addTarget: (id) target action: (SEL) selector {
    self.target = target;
    self.action = selector;
}

@end