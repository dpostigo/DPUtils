//
// Created by Dani Postigo on 5/17/14.
//

#import "UILabel+DPKit.h"


@implementation UILabel (DPKit)


- (void) setKerning: (CGFloat) kerningSize {
    CGFloat pointSize = self.font.pointSize;

    NSDictionary *attributes;
    kerningSize = 60 * (pointSize / 1000);
    attributes = @{
            NSFontAttributeName : self.font,
            NSKernAttributeName : @(kerningSize)
    };

    self.attributedText = [[NSMutableAttributedString alloc] initWithString: self.text attributes: attributes];
}
@end