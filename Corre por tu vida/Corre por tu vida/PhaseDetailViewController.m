//
//  PhaseDetailViewController.m
//  Corre por tu vida
//
//  Created by vstricker on 05/10/13.
//  Copyright (c) 2013 Vanesa Stricker. All rights reserved.
//

#import "PhaseDetailViewController.h"

@interface PhaseDetailViewController ()

@end

@implementation PhaseDetailViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    CGFloat timeInMinutes = self.phase.duration / 60;
    [self.durationLbl setText:[NSString stringWithFormat:@"%.2f minutos", timeInMinutes]];
    CGFloat maximum = self.phase.maximumVelocity * 3.6;
    CGFloat minimum = self.phase.minimumVelocity * 3.6;
    [self.maximumVelocityLbl setText:[NSString stringWithFormat:@"%.2f Km/h", maximum]];
    [self.minimumVelocityLbl setText:[NSString stringWithFormat:@"%.2f Km/h", minimum]];
}

@end
