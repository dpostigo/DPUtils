//
// Created by Dani Postigo on 2/9/14.
//

#import "NSOutlineView+DPKitNibRegistration.h"

@implementation NSOutlineView (DPKitNibRegistration)

- (void) registerNibName: (NSString *) nibName forIdentifier: (NSString *) identifier {
    NSNib *cellNib = [[NSNib alloc] initWithNibNamed: nibName bundle: nil];
    [self registerNib: cellNib forIdentifier: identifier];



}
@end