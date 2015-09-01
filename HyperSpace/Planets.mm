//
//  Planets.m
//  HyperSpace
//
//  Created by callum taylor on 28/05/2015.
//  Copyright (c) 2015 Satori. All rights reserved.
//

#import "Planets.h"
#include <math.h>

#pragma mark Planets
@implementation Planets

float calculateOffset(float f) {
    if (f == 0) return 0;
    else return 100+sqrtf((100*100)-((100-f)*(100-f)));
}

+ (NSArray *)allPlanets {
    NSMutableArray *planets = [NSMutableArray array];
    
    Planet *planet1 = [Planets makePlanet:100 :100];
    planet1.backgroundColor = [UIColor redColor];
    [planets addObject:planet1];
    
    Planet *planet2 = [Planets makePlanet:100 :0];
    planet2.backgroundColor = [UIColor blueColor];
    [planets addObject:planet2];

    Planet *planet3 = [Planets makePlanet:200 :200];
    planet3.backgroundColor = [UIColor greenColor];
    [planets addObject:planet3];
    
    Planet *planet4 = [Planets makePlanet:0 :200];
    planet4.backgroundColor = [UIColor purpleColor];
    [planets addObject:planet4];
    
    return [NSArray arrayWithArray:planets];
}

+ (UIView *)makePlanet:(float)x :(float)y {
    UIView *planet = [UIView new];
    planet.bounds = CGRectMake(0, 0, 60, 60);
    planet.layer.position = CGPointMake(x, calculateOffset(y));
    planet.layer.cornerRadius = 30;
    planet.layer.shadowOffset = CGSizeMake(-5, 5);
    planet.layer.shadowRadius = 5;
    planet.layer.shadowOpacity = 0.5;
    
    CABasicAnimation *anim1 = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    anim1.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    anim1.fromValue = [NSNumber numberWithFloat:0];
    anim1.toValue = [NSNumber numberWithFloat:((360*M_PI)/180)];
    anim1.repeatCount = HUGE_VALF;
    anim1.duration = 4;
    
    [planet.layer addAnimation:anim1 forKey:@"transform"];
    return planet;
}
@end

#pragma mark Planet

@implementation Planet



@end
