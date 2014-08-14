//
// Created by Dani Postigo on 3/13/14.
//

#import "NSObject+DPKitBindings.h"

@implementation NSObject (DPKitBindings)

- (id) contentObservedObject {
    return [self.contentBindingInfo objectForKey: @"NSObservedObject"];
}

- (id) contentValuesObservedObject {
    return [self.contentValuesBindingInfo objectForKey: @"NSObservedObject"];
}

- (id) valueObservedObject {
    return [self.valueBindingInfo objectForKey: @"NSObservedObject"];
}


- (NSDictionary *) contentBindingInfo {
    return [self infoForBinding: @"content"];
}

- (NSDictionary *) contentArrayBindingInfo {
    return [self infoForBinding: @"contentArray"];
}

- (NSDictionary *) contentObjectBindingInfo {
    return [self infoForBinding: @"contentObject"];
}

- (NSDictionary *) contentValuesBindingInfo {
    return [self infoForBinding: @"contentValues"];
}

- (NSDictionary *) valueBindingInfo {
    return [self infoForBinding: @"value"];
}


@end