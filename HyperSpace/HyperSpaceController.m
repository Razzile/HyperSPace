//
//  HyperSpaceController.m
//  HyperSpace
//
//  Created by callum taylor on 29/05/2015.
//  Copyright (c) 2015 Satori. All rights reserved.
//

#import "HyperSpaceController.h"
#import "Planets.h"

@implementation HyperSpaceController

- (NSInteger)numberOfPlanetsForOrbit:(NSInteger)orbit {
    return 2;
}

- (NSInteger)numberOfOrbits {
    return [Planets allPlanets].count / 2;
}
- (NSArray *)planetViewsForOrbit:(NSInteger)orbit {
    NSInteger startPos = orbit*[self numberOfPlanetsForOrbit:orbit];
    return [NSArray arrayWithObjects:[[Planets allPlanets] objectAtIndex:startPos], [[Planets allPlanets] objectAtIndex:startPos+1], nil];
}

- (Planet *)centralPlanet {
    return nil;
}

@end
