//
//  TrainingPhase.m
//  Corre por tu vida
//
//  Created by vstricker on 24/09/13.
//  Copyright (c) 2013 Vanesa Stricker. All rights reserved.
//

#import "TrainingPhase.h"

@implementation TrainingPhase

- (id)initWithDuration:(NSInteger)duration minimunVelocity:(NSInteger)minimum maximumVelocity:(NSInteger)maximum;
{
    self = [super init];
    if (self) {
        self.duration = duration;
        self.minimumVelocity = minimum;
        self.maximumVelocity = maximum;
    }
    return self;
}

@end
