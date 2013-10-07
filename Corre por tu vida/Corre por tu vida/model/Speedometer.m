//
//  Speedometer.m
//  Corre por tu vida
//
//  Created by vstricker on 05/10/13.
//  Copyright (c) 2013 Vanesa Stricker. All rights reserved.
//

#import "Speedometer.h"

@implementation Speedometer

- (id)initWithLocationManager:(LocationManager*)locationManager frecuency:(CGFloat)frecuency
{
    self = [super init];
    if (self) {
        self.locationManager = locationManager;
        self.frecuency = frecuency;
        self.startDate = [NSDate date];
        self.startPoint = [self.locationManager getCurrentPosition];
        self.seconds = 0;
        self.isRunning = YES;
        //Timer is counting seconds
        self.time = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(counting) userInfo:nil repeats:NO];
        NSRunLoop *runLoop = [NSRunLoop currentRunLoop];
        [runLoop addTimer:self.time forMode:NSDefaultRunLoopMode];
    }
    return self;
}

- (CGFloat)getCurrentSpeed
{
//Speed in meters per seconds
    
    //Calculate distance
    CLLocationDistance distance = [self.startPoint distanceFromLocation:[self.locationManager getCurrentPosition]];
    //Calculate speed en meter per seconds
    CGFloat speed = roundf(distance / self.seconds);
    return speed;
}

- (void)counting
{
    if (self.isRunning) {
        self.seconds += 1;
    } else {
        [self.time invalidate];
        self.time = nil;
    }
}

@end
