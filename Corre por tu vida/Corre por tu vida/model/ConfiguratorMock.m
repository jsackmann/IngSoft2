
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
        //initialization of location manager
        self.locationManager = [[LocationManager alloc] init];
        //initialization of speedometer
#warning La frecuencia por ahora esta cableada
        self.speedometer = [[Speedometer alloc] initWithLocationManager:self.locationManager frecuency:10];
        self.timer = [[Timer alloc] init];
        
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
