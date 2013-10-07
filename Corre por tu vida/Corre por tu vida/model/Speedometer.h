//
//  Speedometer.h
//  Corre por tu vida
//
//  Created by vstricker on 05/10/13.
//  Copyright (c) 2013 Vanesa Stricker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <GoogleMaps/GoogleMaps.h>
#import "LocationManager.h"

@interface Speedometer : NSObject

@property (strong, nonatomic) NSDate *startDate;
@property (nonatomic) CLLocation *startPoint;
@property (strong, nonatomic) LocationManager *locationManager;
@property (nonatomic) CGFloat frecuency;
@property (strong, nonatomic) NSTimer *time;
@property (nonatomic) CGFloat seconds;
@property BOOL isRunning;

- (id)initWithLocationManager:(LocationManager*)locationManager frecuency:(CGFloat)frecuency;
- (CGFloat)getCurrentSpeed;

@end
