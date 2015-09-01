//
//  HyperSpaceScrollView.m
//  HyperSpace
//
//  Created by callum taylor on 29/05/2015.
//  Copyright (c) 2015 Satori. All rights reserved.
//

#import "HyperSpaceScrollView.h"

@implementation HyperSpaceScrollView

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.contentSize = frame.size; //UIScreen?
        self.delegate = self;
    }
    return self;
}

- (void)layoutSubviews {
    
}

@end
