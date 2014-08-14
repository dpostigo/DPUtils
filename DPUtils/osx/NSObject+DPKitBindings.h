//
// Created by Dani Postigo on 3/13/14.
//

#import <Foundation/Foundation.h>

@interface NSObject (DPKitBindings)

- (id) contentObservedObject;
- (id) contentValuesObservedObject;
- (id) valueObservedObject;
- (NSDictionary *) contentBindingInfo;
- (NSDictionary *) contentArrayBindingInfo;
- (NSDictionary *) contentObjectBindingInfo;
- (NSDictionary *) contentValuesBindingInfo;
- (NSDictionary *) valueBindingInfo;
@end