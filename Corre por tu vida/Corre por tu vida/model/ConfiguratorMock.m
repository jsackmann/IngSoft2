
//
//  ConfiguratorMock.m
//  Corre por tu vida
//
//  Created by vstricker on 05/10/13.
//  Copyright (c) 2013 Vanesa Stricker. All rights reserved.
//

#import "ConfiguratorMock.h"

@implementation ConfiguratorMock

- (CLLocationManager*)getLocationManager
{
#warning incomplete: falta que este location manager sea usado por el viewController que maneja el mapa
    CLLocationManager *locationManager = [[CLLocationManager alloc] init];
    return locationManager;
}
- (Speedometer*)getSpeedometer
{
    Speedometer *speedometer = [[Speedometer alloc] init];
    //speedometer necesita saber el tiempo y la distancia
#warning incomplete: falta setearla alguna propiedades al speedometer???
    return speedometer;
}

- (NSTimer*)getTimer
{
    //Frecuency of the timer = 1 second
    NSTimer *timer =[NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(update) userInfo:nil repeats:YES];
    return timer;
}

- (void)update
{
#warning incomplete: falta hacer update de todos los que se suscriban a los servicios para ser actualizados cuando se dispare el timer.
}

@end
