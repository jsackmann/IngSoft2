//
//  LocationManager.h
//  Corre por tu vida
//
//  Created by vstricker on 06/10/13.
//  Copyright (c) 2013 Vanesa Stricker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <GoogleMaps/GoogleMaps.h>
#import "Timer.h"

@interface LocationManager : NSObject <CLLocationManagerDelegate>

@property CLLocation *userLocation;
@property (strong, nonatomic) CLLocationManager *locationManager;
@property (strong, nonatomic) Timer *timer;
@property BOOL firstUpdate;

- (id)initWithTimer:(Timer*)timer;
- (CLLocation*)getCurrentPosition;

@end
