//
//  Dice.m
//  ThreeLow
//
//  Created by Alex on 2015-06-16.
//  Copyright (c) 2015 Alex. All rights reserved.
//

#import "Dice.h"

@implementation Dice

- (instancetype)init
{
    self = [super init];
    if (self) {
        _isCurrentlyHeld = NO;
        _dieValue = 0;
    }
    return self;
}


-(void)rollTheDie{
    if(!self.isCurrentlyHeld) {
        self.dieValue = [NSNumber numberWithInt:arc4random_uniform(6)+1];
        NSLog(@"die Value: %@", self.dieValue);
    }
}


@end
