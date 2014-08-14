//
// Created by Dani Postigo on 1/16/14.
//

#import <Foundation/Foundation.h>

@interface NSObject (CallSelector)

- (CGFloat) returnFloat: (SEL) selector delegate: (id) delegate object: (id) object;
- (CGFloat) returnFloat: (SEL) selector delegate: (id) delegate object: (id) object object: (id) object2;
- (CGFloat) returnFloat: (SEL) selector delegate: (id) delegate object: (id) object object: (id) object2 object: (id) object3;
- (BOOL) forwardSelector: (SEL) selector delegate: (id) delegate object: (id) object;
- (BOOL) forwardSelector: (SEL) selector delegate: (id) delegate object: (id) object object: (id) object2;
- (BOOL) forwardSelector: (SEL) selector delegate: (id) delegate object: (id) object object: (id) object2 object: (id) object3;

- (void) forwardSelector: (SEL) selector delegates: (NSArray *) delegates object: (id) object;
- (void) forwardSelector: (SEL) selector delegates: (NSArray *) delegates object: (id) object object: (id) object2;
- (void) forwardSelector: (SEL) selector delegates: (NSArray *) delegates object: (id) object object: (id) object2 object: (id) object3;
@end