//
//  State.h
//  Corre por tu vida
//
//  Created by vstricker on 06/10/13.
//  Copyright (c) 2013 Vanesa Stricker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <GoogleMaps/GoogleMaps.h>

@interface State : NSObject

@property CGFloat currentSpeed;
@property CLLocation *currentLocation;
@property NSDate *currentTime;

@end
