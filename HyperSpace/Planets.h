//
//  Planets.h
//  HyperSpace
//
//  Created by callum taylor on 28/05/2015.
//  Copyright (c) 2015 Satori. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class Planet;

@interface Planets : NSObject
+ (NSArray *)allPlanets;
+ (Planet *)makePlanet:(float)x :(float)y;
@end

@interface Planet : UIView

@end