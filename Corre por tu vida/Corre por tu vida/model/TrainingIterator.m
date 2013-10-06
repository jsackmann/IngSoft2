//
//  TrainingIterator.m
//  Corre por tu vida
//
//  Created by vstricker on 24/09/13.
//  Copyright (c) 2013 Vanesa Stricker. All rights reserved.
//

#import "TrainingIterator.h"

@implementation TrainingIterator


- (id)init:(Training*)training
{
    self = [super init];
    if (self) {
        self.training = training;
    }
    return self;
}

- (TrainingPhase*)currentPhase
{
    return self.currentPhase;
}

- (void)nextPhase
{
    NSInteger index = [self.training.phases indexOfObject:self.currentPhase];
    if (self.hasNextPhase) {
        self.currentPhase = [self.training.phases objectAtIndex:index+1];
    }
}

- (BOOL)hasNextPhase
{
    NSInteger index = [self.training.phases indexOfObject:self.currentPhase];
    return (index < [self.training.phases count] -1);
}

@end
