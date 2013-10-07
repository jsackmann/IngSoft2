//
//  ConfiguratorMock.h
//  Corre por tu vida
//
//  Created by vstricker on 05/10/13.
//  Copyright (c) 2013 Vanesa Stricker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <GoogleMaps/GoogleMaps.h>
#import "Speedometer.h"
#import "LocationManager.h"
#import "Timer.h"

@interface ConfiguratorMock : NSObject

//This class is the mock of the configurator 

@property (strong, nonatomic) LocationManager *locationManager;
@property (strong, nonatomic) Speedometer *speedometer;
@property (strong, nonatomic) Timer *timer;
@property CLLocation *userLocation;

- (id)init;
- (LocationManager*)getLocationManager;
- (Speedometer*)getSpeedometer;
- (Timer*)getTimer;

@end
