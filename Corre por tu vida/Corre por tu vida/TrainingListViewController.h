//
//  TrainingListViewController.h
//  Corre por tu vida
//
//  Created by vstricker on 23/09/13.
//  Copyright (c) 2013 Vanesa Stricker. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TrainingIterator.h"

@interface TrainingListViewController : UITableViewController


@property (strong, nonatomic) NSArray *trainings;
@property (strong, nonatomic) TrainingIterator *selectedTraining;

@end
