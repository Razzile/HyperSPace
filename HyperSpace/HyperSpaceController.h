//
//  HyperSpaceController.h
//  HyperSpace
//
//  Created by callum taylor on 29/05/2015.
//  Copyright (c) 2015 Satori. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@class Planet;
@interface HyperSpaceController : NSObject

- (NSInteger)numberOfPlanetsForOrbit:(NSInteger)orbit;
- (NSInteger)numberOfOrbits;
- (NSArray *)planetViewsForOrbit:(NSInteger)orbit;
- (UIView *)centralPlanet;

@end
