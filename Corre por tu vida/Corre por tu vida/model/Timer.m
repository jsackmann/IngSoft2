//
//  Timer.m
//  Corre por tu vida
//
//  Created by vstricker on 06/10/13.
//  Copyright (c) 2013 Vanesa Stricker. All rights reserved.
//

#import "Timer.h"

@implementation Timer

- (id)init
{
    self = [super init];
    if (self) {
        self.suscriptors = [NSMutableArray array];
    }
    return self;
}

- (void)update
{
    for (id suscriptor in self.suscriptors) {
        if ([suscriptor respondsToSelector:@selector(update)]) {
            [suscriptor update];
        }
    }
}

- (void)suscribeToTimer:(id)aSuscriptor
{
    [self.suscriptors addObject:aSuscriptor];
}


- (void)start
{
    self.timer =[NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(update) userInfo:nil repeats:YES];
    NSRunLoop *runLoop = [NSRunLoop currentRunLoop];
    [runLoop addTimer:self.timer forMode:NSDefaultRunLoopMode];
}


- (void)stop
{
    [self.timer invalidate];
    self.timer = nil;
}
@end
