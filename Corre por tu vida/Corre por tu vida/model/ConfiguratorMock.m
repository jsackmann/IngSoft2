
//
//  ConfiguratorMock.m
//  Corre por tu vida
//
//  Created by vstricker on 05/10/13.
//  Copyright (c) 2013 Vanesa Stricker. All rights reserved.
//

#import "ConfiguratorMock.h"

@implementation ConfiguratorMock

- (id)init
{
    self = [super init];
    if (self) {
        self.timer = [[Timer alloc] init];
        //initialization of location manager
        self.locationManager = [[LocationManager alloc] initWithTimer:self.timer];
        //initialization of speedometer
#warning La frecuencia por ahora esta cableada
        self.speedometer = [[Speedometer alloc] initWithLocationManager:self.locationManager frecuency:10];
        
        
    }
    return self;
}

- (LocationManager*)getLocationManager
{
    return self.locationManager;
}
- (Speedometer*)getSpeedometer
{
    return self.speedometer;
}

- (Timer*)getTimer
{
    return self.timer;
}

@end
