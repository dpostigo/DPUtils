//
// Created by Dani Postigo on 4/20/14.
//

#import "MKMapView+DPKit.h"

@implementation MKMapView (DPKit)

- (MKMapItem *) mapItemForAnnotation: (id <MKAnnotation>) selectedAnnotation mapItems: (NSArray *) array {
    MKMapItem *ret = nil;

    CLLocationCoordinate2D coordinate = selectedAnnotation.coordinate;
    CLLocation *selectedLocation = [[CLLocation alloc] initWithLatitude: coordinate.latitude longitude: coordinate.longitude];

    for (MKMapItem *item in array) {
        CLLocation *location = item.placemark.location;
        if ([selectedLocation distanceFromLocation: location] == 0) {
            ret = item;
            break;
        }

    }
    return ret;
}


- (NSArray *) annotationsExcludingUserLocation {
    NSMutableArray *ret = [NSMutableArray arrayWithArray: self.annotations];
    [ret removeObject: self.userAnnotation];
    return ret;
}


- (id <MKAnnotation>) userAnnotation {
    return [self userAnnotationInArray: self.annotations];

}

- (id <MKAnnotation>) userAnnotationInArray: (NSArray *) array {
    id <MKAnnotation> ret = nil;
    for (id <MKAnnotation> annotation in array) {
        if ([annotation isMemberOfClass: [MKUserLocation class]]) {
            ret = annotation;
            break;
        }
    }
    return ret;
}

@end