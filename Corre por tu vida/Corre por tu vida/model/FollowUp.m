//
//  FollowUp.m
//  Corre por tu vida
//
//  Created by vstricker on 06/10/13.
//  Copyright (c) 2013 Vanesa Stricker. All rights reserved.
//

#import "FollowUp.h"
#import "TrainingPhase.h"

@implementation FollowUp

- (id)initWithTrainingIterator:(TrainingIterator*)iterator
{
    self = [super init];
    if (self) {
        self.trainingIterator = iterator;
        self.start = [NSDate date];
        self.firstUpdate = YES;
    }
    return  self;
}

- (void)update:(State*)state
{
#warning incomplete: este metodo no esta haciendo lo de: verificar si tiene que pasar de fase o no, y emitir notificacion sonora de la velocidad
    if (self.firstUpdate) {
        self.firstUpdate = NO;
        self.start = state.currentTime;
        self.startLocation = state.currentLocation;
        self.lastState = state;
    }
    //Update speed
    
    //Update position
    
    //update routed : distancia recorrida
    self.routed = [self.lastState.currentLocation distanceFromLocation: state.currentLocation];
    self.lastState = state;
    //Update time: es un nsdate
    NSLog(@"en update de seguimiento");
    
}

- (CGFloat)expectedSpeed
{
    //calcular distancia implicita: velocidad minima de la fase * tiempo de duracion de la fase
    TrainingPhase *phase = [self.trainingIterator getCurrentPhase];
    CGFloat implicitDistance = phase.minimumVelocity * phase.duration;
    
    //calcular a que velocidad deberia estar corriendo para lograr hacer esa distancia en el tiempo que le queda
    CGFloat missingDistance = implicitDistance - self.routed;
    NSDate *lastDate = self.lastState.currentTime;
    CGFloat missingTime = phase.duration - [lastDate timeIntervalSinceDate:self.start];
    CGFloat expectedSpeed = missingDistance / missingTime;
    
    return expectedSpeed;
}


@end
