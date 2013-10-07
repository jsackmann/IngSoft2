//
//  FollowUp.h
//  Corre por tu vida
//
//  Created by vstricker on 06/10/13.
//  Copyright (c) 2013 Vanesa Stricker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "TrainingIterator.h"
#import "State.h"

typedef enum {
    kOk,
    kLow,
    kHigh
} userSpeedState;


@interface FollowUp : NSObject <UIAlertViewDelegate>

@property (strong, nonatomic) TrainingIterator *trainingIterator;
@property CLLocationDistance routed; //distancia recorrida
@property CGFloat timeSinceStart; //tiempo transcurrido desde que inicio el seguimiento
@property (strong, nonatomic) State *lastState;
@property (strong, nonatomic) NSDate *start;
@property (strong, nonatomic) CLLocation *startLocation;
@property BOOL firstUpdate;
@property NSInteger updateCount;

- (id)initWithTrainingIterator:(TrainingIterator*)iterator;
- (CGFloat)expectedSpeed;
- (userSpeedState)getUserSpeedState:(State*)state;

@end
