//
//  ViewController.m
//  HyperSpace
//
//  Created by callum taylor on 28/05/2015.
//  Copyright (c) 2015 Satori. All rights reserved.
//

#import "ViewController.h"
#import "Planets.h"
@interface ViewController ()

- (void)centerScrollViewContents;
- (void)scrollViewDoubleTapped:(UITapGestureRecognizer*)recognizer;
- (void)scrollViewTwoFingerTapped:(UITapGestureRecognizer*)recognizer;

@end

@implementation ViewController

@synthesize scrollView;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.scrollView = [[UIScrollView alloc] initWithFrame:self.view.frame];
    UIScrollView *mainView = self.scrollView;
    [self.view addSubview:mainView];
    
    CALayer *orbit1 = [CALayer layer];
    orbit1.bounds = CGRectMake(0, 0, 200, 200);
    orbit1.position = self.view.center;
    orbit1.cornerRadius = 100;
    orbit1.borderColor = [UIColor clearColor].CGColor;
    orbit1.borderWidth = 1.5;
    [mainView.layer addSublayer:orbit1];
    
    CALayer *orbit1disp = [CALayer layer];
    orbit1disp.bounds = CGRectMake(0, 0, 200, 200);
    orbit1disp.anchorPoint = orbit1.bounds.origin;
    orbit1disp.cornerRadius = 100;
    orbit1disp.borderColor = [UIColor grayColor].CGColor;
    orbit1disp.borderWidth = 1.5;
    [orbit1 addSublayer:orbit1disp];
    
    CABasicAnimation *anim1 = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    anim1.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionLinear];
    anim1.fromValue = [NSNumber numberWithFloat:0];
    anim1.toValue = [NSNumber numberWithFloat:-((360*M_PI)/180)];
    anim1.repeatCount = HUGE_VALF;
    anim1.duration = 4;
    
    for (UIView *view in [Planets allPlanets]) {
        [orbit1 addSublayer:view.layer];
    }

    [orbit1 addAnimation:anim1 forKey:@"transform"];
    
    mainView.contentSize = orbit1.frame.size;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
