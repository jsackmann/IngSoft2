//
//  TrainingIterator.h
//  Corre por tu vida
//
//  Created by vstricker on 24/09/13.
//  Copyright (c) 2013 Vanesa Stricker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Training.h"
#import "TrainingPhase.h"

@interface TrainingIterator : NSObject

@property (nonatomic, strong) Training *training;
@property (nonatomic, strong) TrainingPhase *currentPhase;

- (id)init:(Training*)training;

- (TrainingPhase*)currentPhase;
- (void)nextPhase;
- (BOOL)hasNextPhase;

@end
