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
    NSInteger timeInMinutes = self.phase.duration / 60;
    [self.durationLbl setText:[NSString stringWithFormat:@"%d minutos", timeInMinutes]];
    [self.maximumVelocityLbl setText:[NSString stringWithFormat:@"%d Km/h", self.phase.maximumVelocity]];
    [self.minimumVelocityLbl setText:[NSString stringWithFormat:@"%d Km/h", self.phase.minimumVelocity]];
}

@end
