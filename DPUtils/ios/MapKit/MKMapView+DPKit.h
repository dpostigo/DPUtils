//
// Created by Dani Postigo on 4/20/14.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MKMapView (DPKit)

- (MKMapItem *) mapItemForAnnotation: (id <MKAnnotation>) selectedAnnotation mapItems: (NSArray *) array;
- (NSArray *) annotationsExcludingUserLocation;
@end