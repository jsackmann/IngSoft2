//
//  FollowUp.h
//  Corre por tu vida
//
//  Created by vstricker on 06/10/13.
//  Copyright (c) 2013 Vanesa Stricker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "TrainingIterator.h"
#import "State.h"

@interface FollowUp : NSObject

@property (strong, nonatomic) TrainingIterator *trainingIterator;
@property CGFloat routed; //distancia recorrida
@property CGFloat timeSinceStart; //tiempo transcurrido desde que inicio el seguimiento
@property (strong, nonatomic) State *lastState;
@property (strong, nonatomic) NSDate *start;

- (id)initWithTrainingIterator:(TrainingIterator*)iterator;
- (CGFloat)expectedSpeed;

@end
