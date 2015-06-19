//
//  GameModel.m
//  ThreeLow
//
//  Created by Alex on 2015-06-16.
//  Copyright (c) 2015 Alex. All rights reserved.
//

#import "GameModel.h"


@implementation GameModel
    
- (instancetype)initWithDice
{
    self.diceArray = [[NSArray alloc] init];
    self = [super init];
    if (self) {
        
        NSMutableArray *tempDiceArray = [[NSMutableArray alloc] init];
        
        [tempDiceArray addObject:[[Dice alloc] init]];
        [tempDiceArray addObject:[[Dice alloc] init]];
        [tempDiceArray addObject:[[Dice alloc] init]];
        [tempDiceArray addObject:[[Dice alloc] init]];
        [tempDiceArray addObject:[[Dice alloc] init]];
        
        self.diceArray = [NSArray arrayWithArray:tempDiceArray];
    }
    return self;
}

-(void)rollAllDice
{
    for (int i = 0; i < self.diceArray.count; i++) {
        [self.diceArray[i] rollTheDie];
    }
}

-(void)resetDice
{
    for (int i = 0; i < self.diceArray.count; i++) {
        Dice *tempDice = self.diceArray[i];
        tempDice.isCurrentlyHeld = NO;
    }
   
}

//-(void)currentScoreTracker:(Dice *)dice {
//    int currentScore = 0;
//    for (int i = 0; i < [diceArray count]; i++) {
//        if(dice.dieValue isEqualToString:diceArray[i]) {
//            
//            
//        }
//    }
//
//}



@end
