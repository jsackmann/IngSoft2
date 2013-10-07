//
//  TrainingListViewController.m
//  Corre por tu vida
//
//  Created by vstricker on 23/09/13.
//  Copyright (c) 2013 Vanesa Stricker. All rights reserved.
//

#import "TrainingListViewController.h"
#import "PhaseListViewController.h"
//This Classes are imported only for mock trainings
#import "Training.h"
#import "TrainingPhase.h"

@interface TrainingListViewController ()

@end

@implementation TrainingListViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    //Mock a training iterator for a training with only one phase
    NSDate *finishDatePhase = [[NSDate alloc] initWithTimeInterval:60000 sinceDate:[NSDate date]];
    TrainingPhase *phase = [[TrainingPhase alloc] initWithDuration:finishDatePhase minimunVelocity:5 maximumVelocity:10];
    Training *training = [[Training alloc] init:[NSArray arrayWithObject:phase]];
    TrainingIterator *trainingIterator = [[TrainingIterator alloc] init:training];
    self.trainings = [NSArray arrayWithObject:trainingIterator];
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Entrenamiento";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    // Configure the cell...
    
    return cell;
}

#pragma mark - Table view delegate

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    self.selectedTraining = [self.trainings objectAtIndex:indexPath.row];
    
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"phaseList"]) {
        PhaseListViewController *phaseListVC = segue.destinationViewController;
        NSArray *phases = [[[self.trainings objectAtIndex:[self.tableView indexPathForSelectedRow].row] training] phases];
        [phaseListVC setPhases:phases];
        [phaseListVC setTrainingIterator:self.selectedTraining];
    }
    
}

@end
