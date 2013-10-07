//
//  LocationManager.m
//  Corre por tu vida
//
//  Created by vstricker on 06/10/13.
//  Copyright (c) 2013 Vanesa Stricker. All rights reserved.
//

#import "LocationManager.h"

@implementation LocationManager

- (id)init
{
    self = [super init];
    if (self) {
        self.locationManager = [[CLLocationManager alloc] init];
        [self.locationManager setDelegate:self];
        [self.locationManager startUpdatingLocation];
    }
    return self;
}

- (CLLocation*)getCurrentPosition
{
    if (self.userLocation == nil) {
        return self.locationManager.location;
    }
    return self.userLocation;
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations{
    self.userLocation = [locations objectAtIndex:0];
}

@end
