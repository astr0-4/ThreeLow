//
//  Dice.m
//  ThreeLow
//
//  Created by Alex on 2015-06-16.
//  Copyright (c) 2015 Alex. All rights reserved.
//

#import "Dice.h"

@implementation Dice

-(void)holdDiceAndStoreInArray {
    NSMutableArray *diceHeld = [[NSMutableArray alloc] init];
    if(self.isCurrentlyHeld) {
        [diceHeld addObject:self];
    }
}

@end
