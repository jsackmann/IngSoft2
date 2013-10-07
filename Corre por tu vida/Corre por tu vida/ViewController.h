//
//  ViewController.h
//  Corre por tu vida
//
//  Created by Vanesa Stricker on 8/23/13.
//  Copyright (c) 2013 Vanesa Stricker. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GoogleMaps/GoogleMaps.h>
#import "ConfiguratorMock.h"
#import "State.h"
#import "FollowUp.h"
#import "Notificator.h"
#import "StateService.h"

@interface ViewController : UIViewController <GMSMapViewDelegate, CLLocationManagerDelegate>
{
    IBOutlet GMSMapView *mapView;
}
@property (strong, nonatomic) IBOutlet UIView *indicatorView;

@property (strong, nonatomic) IBOutlet UIView *bottomView;
@property (nonatomic, retain) LocationManager *locationManager;
@property CLLocation *userLocation;
@property (strong, nonatomic) IBOutlet UILabel *time;
@property (strong, nonatomic) IBOutlet UILabel *mediaSpeed;
@property (strong, nonatomic) IBOutlet UILabel *expectedSpeed;
@property (strong, nonatomic) ConfiguratorMock *configurator;
@property (strong, nonatomic) State *state;
@property (strong, nonatomic) FollowUp *followUp;
@property (strong, nonatomic) NSDate *start;
@property (strong, nonatomic) Notificator *notificator;

//This is for stop followup
@property (strong, nonatomic) StateService *stateService;

@property (strong, nonatomic) NSMutableArray *positions;
@property CGFloat sumSpeed;
@property CGFloat measureCount;

@end
