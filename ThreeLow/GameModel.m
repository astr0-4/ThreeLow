//
//  GameModel.m
//  ThreeLow
//
//  Created by Alex on 2015-06-16.
//  Copyright (c) 2015 Alex. All rights reserved.
//

#import "GameModel.h"


@implementation GameModel {
    NSArray *diceArray;
}

- (instancetype)initWithDice
{
    diceArray = [[NSArray alloc] init];
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

-(NSString *)rollTheDice:(Dice *)dice {
    if(!dice.isCurrentlyHeld) {
    return diceArray[arc4random_uniform(6)];
    }
    return dice.textValue;
}

//-(void)currentScoreTracker:(Dice *)dice {
//    int currentScore = 0;
//    for (int i = 0; i < [diceArray count]; i++) {
//        if(dice.textValue isEqualToString:diceArray[i]) {
//            
//            
//        }
//    }
//
//}



@end
