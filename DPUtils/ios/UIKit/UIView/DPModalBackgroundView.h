//
// Created by Dani Postigo on 6/15/14.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class DPModalBackgroundView;

@protocol DPModalBackgroundDelegate

@optional
- (void) modalBackgroundDidDismiss: (DPModalBackgroundView *) modalBackground;

@end

@interface DPModalBackgroundView : UIView {

}
@end