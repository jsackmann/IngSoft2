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
    self.notificator = [[Notificator alloc] init];
    [self addStopButton];
    
}

- (void)addStopButton
{
    UIBarButtonItem *button = [[UIBarButtonItem alloc] initWithTitle:@"Stop" style:UIBarButtonItemStylePlain target:self action:@selector(stopFollowUp)];
    [self.navigationItem setRightBarButtonItem:button];
}

- (void)stopFollowUp
{
    [self.stateService unsuscribeToStateService:self];
    [self.navigationController popToRootViewControllerAnimated:YES];
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
    
    //convert speeds from meter per second to kilometers per hour
    mediumSpeed = mediumSpeed * 3.6;
    [self.mediaSpeed setText:[NSString stringWithFormat:@"%.2f Km/h", mediumSpeed]];
    
    //calcular y mostrar velocidad esperada
    CGFloat expectedSpeed = [self.followUp expectedSpeed];
    expectedSpeed = expectedSpeed * 3.6;
    [self.expectedSpeed setText:[NSString stringWithFormat:@"%.2f Km/h", expectedSpeed]];
    
    //mostrar tiempo
    NSDate *lastDate = state.currentTime;
    CGFloat missingTime = [lastDate timeIntervalSinceDate:self.start];
    [self.time setText:[NSString stringWithFormat:@"%.2f", missingTime]];
    
    //mostrar indicador visual
    userSpeedState userSate =[self.followUp getUserSpeedState:state];
    switch (userSate) {
        case kLow:
            [self.indicatorView setBackgroundColor:[UIColor redColor]];
            [self.notificator playLowSpeedSound];
            break;
        case kHigh:
            [self.indicatorView setBackgroundColor:[UIColor blueColor]];
            [self.notificator playHighSpeedSound];
            break;
        default:
            [self.notificator playOkSpeedSound];
            [self.indicatorView setBackgroundColor:[UIColor greenColor]];
            break;
    } 
    
}


@end
