//
//  StateService.m
//  Corre por tu vida
//
//  Created by vstricker on 05/10/13.
//  Copyright (c) 2013 Vanesa Stricker. All rights reserved.
//

#import "StateService.h"
#import "State.h"

@implementation StateService


//Este metodo se llama cuando se empieza un seguimiento
- (id)initWithConfigurator:(ConfiguratorMock*)configurator
{
    self = [super init];
    if (self) {
        self.locationManager = [configurator getLocationManager];
        self.speedometer = [configurator getSpeedometer];
        self.timer = [configurator getTimer];
        self.suscriptors = [NSMutableArray array];
    }
    return self;
}

- (void)update
{
    //Create an state and update all suscriptor with it
    State *state = [[State alloc] init];
    state.currentLocation = [self.locationManager getCurrentPosition];
    state.currentSpeed = [self.speedometer getCurrentSpeed];
    state.currentTime = [NSDate date];
    for (id suscriptor in self.suscriptors) {
        if ([suscriptor respondsToSelector:@selector(update:)]) {
            [suscriptor performSelector:@selector(update:) withObject:state];
        }
    }
}

- (void)suscribeToStateService:(id)aSuscriptor
{
    [self.suscriptors addObject:aSuscriptor];
}

- (void)startRead
{
    [self.timer suscribeToTimer:self];
}
@end
