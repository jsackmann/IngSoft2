//
//  StateService.m
//  Corre por tu vida
//
//  Created by vstricker on 05/10/13.
//  Copyright (c) 2013 Vanesa Stricker. All rights reserved.
//

#import "StateService.h"

@implementation StateService

- (id)initWithConfigurator:(ConfiguratorMock*)configurator
{
    self = [super init];
    if (self) {
        self.locationManager = [configurator getLocationManager];
        self.speedometer = [configurator getSpeedometer];
#warning incomplete implementation: falta que el servicio de estado se suscriba al timer
        //TODO: suscribirse al time
    }
    return self;
}

@end
