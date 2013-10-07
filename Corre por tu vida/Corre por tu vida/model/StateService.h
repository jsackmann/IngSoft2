//
//  StateService.h
//  Corre por tu vida
//
//  Created by vstricker on 05/10/13.
//  Copyright (c) 2013 Vanesa Stricker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <GoogleMaps/GoogleMaps.h>
#import "ConfiguratorMock.h"

@interface StateService : NSObject

@property (strong, nonatomic) LocationManager *locationManager;
@property (strong, nonatomic) Speedometer *speedometer;
@property (strong, nonatomic) ConfiguratorMock *configurator;
@property (strong, nonatomic) Timer *timer;
@property (strong, nonatomic) NSMutableArray *suscriptors;

- (id)initWithConfigurator:(ConfiguratorMock*)configurator;
- (void)update;
- (void)suscribeToStateService:(id)aSuscriptor;
- (void)startRead;

@end
