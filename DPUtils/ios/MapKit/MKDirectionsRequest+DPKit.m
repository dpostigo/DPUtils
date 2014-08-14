//
// Created by Dani Postigo on 4/20/14.
//

#import "MKDirectionsRequest+DPKit.h"

@implementation MKDirectionsRequest (DPKit)

+ (MKDirectionsRequest *) requestWithSource: (MKMapItem *) source destination: (MKMapItem *) destination {
    return [MKDirectionsRequest requestWithSource: source destination: destination transportType: MKDirectionsTransportTypeAutomobile];
}

+ (MKDirectionsRequest *) requestWithSource: (MKMapItem *) source destination: (MKMapItem *) destination transportType: (MKDirectionsTransportType) transportType {
    MKDirectionsRequest *request = [[MKDirectionsRequest alloc] init];
    request.transportType = transportType;
    request.source = source;
    request.destination = destination;
    return request;
}
@end