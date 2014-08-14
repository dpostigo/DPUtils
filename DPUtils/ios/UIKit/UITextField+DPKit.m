//
// Created by Dani Postigo on 4/25/14.
//

#import "UIView+DPKit.h"
#import "UITextField+DPKit.h"
#import "UIView+DPPositioningUtils.h"

@implementation UITextField (DPKit)


- (void) setLeftPadding: (CGFloat) padding {
    UIView *ret = [[UIView alloc] initWithFrame: CGRectMake(0, 0, padding, self.height)];
    self.leftView = ret;
    self.leftViewMode = UITextFieldViewModeAlways;
}

- (CGFloat) leftPadding {
    return self.leftView ? self.leftView.width : 0;
}


+ (void) linkTextFields: (NSArray *) textFields {
//    for (int j = 0; j < [textFields count]; j++) {
//        UITextField *textField = [textFields objectAtIndex: j];
    //        textField.nextResponder = [textFields objectAtIndex: j + 1];
//}

}
@end