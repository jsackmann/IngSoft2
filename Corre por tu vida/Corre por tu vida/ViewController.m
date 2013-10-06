//
//  ViewController.m
//  Corre por tu vida
//
//  Created by Vanesa Stricker on 8/23/13.
//  Copyright (c) 2013 Vanesa Stricker. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize locationManager;
@synthesize userLocation;
@synthesize userWantsLocation;

-(void)viewDidLoad
{
    [super viewDidLoad];
    [self.tabBarItem setTitle:@"Mapa"];
    locationManager = [[CLLocationManager alloc] init];
    [self showCurrentLocation];
}

- (void)showCurrentLocation {
    mapView.myLocationEnabled = YES;
    [self.locationManager setDelegate:self];
    [self setUserWantsLocation:YES];
    [self.locationManager startUpdatingLocation];
}

- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations{
    
    userLocation = [locations objectAtIndex:0];
    if (userWantsLocation) {
        [self setUserWantsLocation:NO];
        GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:userLocation.coordinate.latitude longitude:userLocation.coordinate.longitude zoom:16.0];
        mapView = [GMSMapView mapWithFrame:CGRectZero camera:camera];
        [self.view layoutIfNeeded];
        self.view = mapView;
        mapView.myLocationEnabled = YES;
        mapView.settings.myLocationButton = YES;
        mapView.settings.compassButton = YES;
        [mapView setDelegate:self];
        [mapView animateToCameraPosition:camera];
    }
    [self drawLine];
}

- (void)drawLine
{
    GMSMutablePath *path = [GMSMutablePath path];
    [path addCoordinate:CLLocationCoordinate2DMake(-34.60695, -58.380725)];
    [path addCoordinate:CLLocationCoordinate2DMake(-34.60795, -58.380725)];
    [path addCoordinate:CLLocationCoordinate2DMake(-34.60795, -58.382)];
    [path addCoordinate:CLLocationCoordinate2DMake(-34.60695, -58.382)];
//    [path addCoordinate:CLLocationCoordinate2DMake(-34.60695, -58.380725)];
    
    GMSPolyline *polyline = [GMSPolyline polylineWithPath:path];
    polyline.map = mapView;
    
    polyline.strokeColor = [UIColor redColor];
    polyline.strokeWidth = 10.f;
    polyline.geodesic = YES;
    polyline.map = mapView;
    polyline.zIndex = 100000000;
}

@end
