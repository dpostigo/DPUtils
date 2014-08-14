//
// Created by Dani Postigo on 4/20/14.
//

#import <Foundation/Foundation.h>
#import <MapKit/MapKit.h>

@interface MKDirectionsRequest (DPKit)

+ (MKDirectionsRequest *) requestWithSource: (MKMapItem *) source destination: (MKMapItem *) destination;
+ (MKDirectionsRequest *) requestWithSource: (MKMapItem *) source destination: (MKMapItem *) destination transportType: (MKDirectionsTransportType) transportType;
@end