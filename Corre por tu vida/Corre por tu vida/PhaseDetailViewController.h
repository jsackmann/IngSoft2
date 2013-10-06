//
//  PhaseDetailViewController.h
//  Corre por tu vida
//
//  Created by vstricker on 05/10/13.
//  Copyright (c) 2013 Vanesa Stricker. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TrainingPhase.h"

@interface PhaseDetailViewController : UIViewController

@property (nonatomic, strong) TrainingPhase *phase;
@property (strong, nonatomic) IBOutlet UILabel *durationLbl;
@property (strong, nonatomic) IBOutlet UILabel *minimumVelocityLbl;
@property (strong, nonatomic) IBOutlet UILabel *maximumVelocityLbl;

@end
