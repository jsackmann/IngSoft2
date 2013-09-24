//
//  GoalBasedPlanner.h
//  Corre por tu vida
//
//  Created by vstricker on 24/09/13.
//  Copyright (c) 2013 Vanesa Stricker. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Planner.h"

@interface GoalBasedPlanner : NSObject <Planner>

- (Plan*)createPlan:(NSArray *)goalPlan start:(NSDate *)start end:(NSDate *)end availability:(NSInteger)availability description:(PersonDescription *)personDescription;

@end
