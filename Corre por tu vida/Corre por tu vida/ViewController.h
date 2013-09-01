//
//  ViewController.h
//  Corre por tu vida
//
//  Created by Vanesa Stricker on 8/23/13.
//  Copyright (c) 2013 Vanesa Stricker. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GoogleMaps/GoogleMaps.h>

@interface ViewController : UIViewController <GMSMapViewDelegate, CLLocationManagerDelegate>
{
    IBOutlet GMSMapView *mapView;
}

@property (nonatomic, retain) CLLocationManager *locationManager;
@property CLLocation *userLocation;
@property BOOL userWantsLocation;

@end
