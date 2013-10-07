//
//  ViewController.m
//  Corre por tu vida
//
//  Created by Vanesa Stricker on 8/23/13.
//  Copyright (c) 2013 Vanesa Stricker. All rights reserved.
//

#import "ViewController.h"
#import "ConfiguratorMock.h"

@interface ViewController ()

@end

@implementation ViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    [self.tabBarItem setTitle:@"Mapa"];
    self.configurator = [[ConfiguratorMock alloc] init];
    self.locationManager = [self.configurator getLocationManager];
    self.positions = [NSMutableArray array];
    self.sumSpeed = 0;
    self.measureCount = 0;
    self.userLocation = [self.locationManager getCurrentPosition];
    [self mapInitialization];
    [self showCurrentLocation];
}

- (void)mapInitialization
{
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:self.userLocation.coordinate.latitude longitude:self.userLocation.coordinate.longitude zoom:16.0];
    mapView = [GMSMapView mapWithFrame:CGRectZero camera:camera];
    [self.view layoutIfNeeded];
    self.view = mapView;
    mapView.myLocationEnabled = YES;
    mapView.settings.myLocationButton = YES;
    mapView.settings.compassButton = YES;
    [mapView setDelegate:self];
    [mapView animateToCameraPosition:camera];
}

- (void)showCurrentLocation
{
    mapView.myLocationEnabled = YES;
    self.userLocation = [self.locationManager getCurrentPosition];
    GMSCameraPosition *camera = [GMSCameraPosition cameraWithLatitude:self.userLocation.coordinate.latitude longitude:self.userLocation.coordinate.longitude zoom:16.0];
    [mapView animateToCameraPosition:camera];
    [self.view addSubview:self.bottomView];
}

- (void)drawLine
{
    GMSMutablePath *path = [GMSMutablePath path];
    for (CLLocation *location in self.positions) {
        [path addCoordinate:location.coordinate];
    }
    
    GMSPolyline *polyline = [GMSPolyline polylineWithPath:path];
    polyline.map = mapView;
    
    polyline.strokeColor = [UIColor redColor];
    polyline.strokeWidth = 10.f;
    polyline.geodesic = YES;
    polyline.map = mapView;
    polyline.zIndex = 100000000;
}

- (void)update:(State*)state
{
    //centrar mapa
    [self showCurrentLocation];

    //agregar posicion actual al array de posiciones
    [self.positions addObject:state.currentLocation];
    
    //dibujar recorrido
    [self drawLine];
    
    //calcular y mostrar la velocidad promedio
    self.sumSpeed += state.currentSpeed;
    self.measureCount += 1;
    CGFloat mediumSpeed = self.sumSpeed / self.measureCount;
    [self.mediaSpeed setText:[NSString stringWithFormat:@"%f m/seg", mediumSpeed]];
    
    //calcular y mostrar velocidad esperada
    CGFloat expectedSpeed = [self.followUp expectedSpeed];
    [self.expectedSpeed setText:[NSString stringWithFormat:@"%f m/seg", expectedSpeed]];
    
    //mostrar tiempo
    NSDate *lastDate = state.currentTime;
    CGFloat missingTime = [lastDate timeIntervalSinceDate:self.start];
    [self.time setText:[NSString stringWithFormat:@"%f", missingTime]];
}


@end
