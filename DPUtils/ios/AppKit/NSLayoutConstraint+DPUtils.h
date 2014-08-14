//
// Created by Dani Postigo on 1/20/14.
// Copyright (c) 2014 Elastic Creative. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSLayoutConstraint (DPUtils)

+ (NSArray *) replaceItem: (id) item inConstraints: (NSArray *) constraints withItem: (id) newItem;
- (NSString *) constraintAsString;
- (NSString *) firstAttributeAsString;
- (NSString *) secondAttributeAsString;
- (NSString *) relationAsString;
@end