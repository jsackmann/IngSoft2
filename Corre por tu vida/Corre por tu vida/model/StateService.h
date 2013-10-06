//
//  StateService.h
//  Corre por tu vida
//
//  Created by vstricker on 05/10/13.
//  Copyright (c) 2013 Vanesa Stricker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <GoogleMaps/GoogleMaps.h>
#import "Speedometer.h"
#import "ConfiguratorMock.h"

@interface StateService : NSObject

@property (strong, nonatomic) CLLocationManager *locationManager;
@property (strong, nonatomic) Speedometer *speedometer;

@end
