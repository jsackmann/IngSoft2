//
//  LocationManager.m
//  Corre por tu vida
//
//  Created by vstricker on 06/10/13.
//  Copyright (c) 2013 Vanesa Stricker. All rights reserved.
//

#import "LocationManager.h"

@implementation LocationManager

- (id)initWithTimer:(Timer *)timer
{
    self = [super init];
    if (self) {
        self.firstUpdate = YES;
        self.timer = timer;
        self.locationManager = [[CLLocationManager alloc] init];
        [self.locationManager setDelegate:self];
        [self.locationManager startUpdatingLocation];
    }
    return self;
}

- (CLLocation*)getCurrentPosition
{
    if (self.userLocation == nil) {
        self.userLocation = self.locationManager.location;
    }
    return self.userLocation;
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations{
    self.userLocation = [locations objectAtIndex:0];
    if (self.firstUpdate) {
        self.firstUpdate = NO;
        [self.timer start];
    }
}

- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error
{
    NSLog(@"Failed with error: %@", error);
}

@end
