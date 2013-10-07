//
//  PhaseListViewController.m
//  Corre por tu vida
//
//  Created by vstricker on 23/09/13.
//  Copyright (c) 2013 Vanesa Stricker. All rights reserved.
//

#import "PhaseListViewController.h"
#import "PhaseDetailViewController.h"
#import "ConfiguratorMock.h"
#import "ViewController.h"
#import "FollowUp.h"

@interface PhaseListViewController ()

@end

@implementation PhaseListViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self addFollowButton];
}

- (void)addFollowButton
{
    UIBarButtonItem *button = [[UIBarButtonItem alloc] initWithTitle:@"Seguir" style:UIBarButtonItemStylePlain target:self action:@selector(follow)];
    [self.navigationItem setRightBarButtonItem:button];
}

- (void)follow
{
    ConfiguratorMock *configurator = [[ConfiguratorMock alloc] init];
    
    self.stateService = [[StateService alloc] initWithConfigurator:configurator];
    self.followUpController = [self.storyboard instantiateViewControllerWithIdentifier:@"followUpController"];
    FollowUp *followUp = [[FollowUp alloc] initWithTrainingIterator:self.trainingIterator];
    
    [self.followUpController setFollowUp:followUp];
    [self.followUpController setStart:[NSDate date]];
    
    //suscribir a todos los que necesitan saber el estado al servicio de estado
    [self.stateService suscribeToStateService:self.followUpController];
    [self.stateService suscribeToStateService:followUp];
    
    //iniciar la lectura del servicio de estado
    [self.stateService startRead];

    //redireccionar a la vista de mapa
    [self.navigationController pushViewController:self.followUpController animated:YES];
}


#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [self.phases count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *CellIdentifier = @"Fase1";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier forIndexPath:indexPath];
    
    
    // Configure the cell...
    
    return cell;
}

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"phaseDetail"]) {
        PhaseDetailViewController *phaseDetailVC = segue.destinationViewController;
        TrainingPhase *phase = [self.phases objectAtIndex:[self.tableView indexPathForSelectedRow].row];
        [phaseDetailVC setPhase:phase];
    }
}

@end
