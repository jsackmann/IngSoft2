//
//  PhaseListViewController.h
//  Corre por tu vida
//
//  Created by vstricker on 23/09/13.
//  Copyright (c) 2013 Vanesa Stricker. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TrainingIterator.h"
#import "StateService.h"
#import "ViewController.h"

@interface PhaseListViewController : UITableViewController

@property (nonatomic, strong) NSArray *phases;
@property (nonatomic, strong) TrainingIterator *trainingIterator;
@property (nonatomic, strong) StateService *stateService;
@property (nonatomic, strong) ViewController *followUpController;

@end
