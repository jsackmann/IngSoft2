//
//  TrainingPhase.h
//  Corre por tu vida
//
//  Created by vstricker on 24/09/13.
//  Copyright (c) 2013 Vanesa Stricker. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TrainingPhase : NSObject

//duration is in seconds
@property (nonatomic) NSTimeInterval duration;

//velocity is in kilometers per hour
@property (nonatomic) NSInteger minimumVelocity;
@property (nonatomic) NSInteger maximumVelocity;

- (id)initWithDuration:(NSDate*)duration minimunVelocity:(NSInteger)minimum maximumVelocity:(NSInteger)maximum;

@end
