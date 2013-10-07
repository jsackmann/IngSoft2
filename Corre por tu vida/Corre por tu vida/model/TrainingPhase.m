//
//  TrainingPhase.m
//  Corre por tu vida
//
//  Created by vstricker on 24/09/13.
//  Copyright (c) 2013 Vanesa Stricker. All rights reserved.
//

#import "TrainingPhase.h"

@implementation TrainingPhase

- (id)initWithDuration:(NSDate*)duration minimunVelocity:(NSInteger)minimum maximumVelocity:(NSInteger)maximum;
{
    self = [super init];
    if (self) {
        NSTimeInterval seconds = [self calculateDurationInSeconds:duration];
        self.duration = seconds;
        self.minimumVelocity = minimum;
        self.maximumVelocity = maximum;
    }
    return self;
}

- (NSTimeInterval)calculateDurationInSeconds:(NSDate*)finishDate
{
    NSDate *now = [NSDate date];
    return [finishDate timeIntervalSinceDate:now];
}

@end
