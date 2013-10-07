//
//  Timer.h
//  Corre por tu vida
//
//  Created by vstricker on 06/10/13.
//  Copyright (c) 2013 Vanesa Stricker. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Timer : NSObject

@property (strong, nonatomic) NSTimer *timer;
@property (strong, nonatomic) NSMutableArray *suscriptors;

- (id)init;
- (void)update;
- (void)suscribeToTimer:(id)aSuscriptor;
- (void)start;
- (void)stop;

@end
