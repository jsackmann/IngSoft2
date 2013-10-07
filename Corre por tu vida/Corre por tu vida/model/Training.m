//
//  Training.m
//  Corre por tu vida
//
//  Created by vstricker on 24/09/13.
//  Copyright (c) 2013 Vanesa Stricker. All rights reserved.
//

#import "Training.h"

@implementation Training

- (id)init:(NSArray*)phases
{
    self = [super init];
    if (self) {
        self.phases = phases;
    }
    return self;
}

@end
