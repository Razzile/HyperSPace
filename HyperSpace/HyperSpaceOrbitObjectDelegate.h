//
//  HyperSpaceOrbitObjectDelegate.h
//  HyperSpace
//
//  Created by callum taylor on 28/05/2015.
//  Copyright (c) 2015 Satori. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol HyperSpaceOrbitObjectDelegate <NSObject>

- (NSInteger)numberOfPlanetsForOrbit:(NSInteger)orbit;
- (UIView *)planetViewForOrbit:(NSInteger)orbit;
- (UIView *)centralPlanet;

@end