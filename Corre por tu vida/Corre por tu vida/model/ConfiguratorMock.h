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

@interface ConfiguratorMock : NSObject

- (CLLocationManager*)getLocationManager;
- (Speedometer*)getSpeedometer;

@end
