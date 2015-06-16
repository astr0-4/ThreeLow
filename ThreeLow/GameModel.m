//
//  GameModel.m
//  ThreeLow
//
//  Created by Alex on 2015-06-16.
//  Copyright (c) 2015 Alex. All rights reserved.
//

#import "GameModel.h"
#import "Dice.h"

@implementation GameModel {
    NSArray *diceArray;
}

- (instancetype)initWithDice
{
    diceArray = [[NSArray alloc] init];
    self = [super init];
    if (self) {
        diceArray = @[@"⚀",@"⚁",@"⚂",@"⚃",@"⚄",@"⚅"];
    }
    return self;
}

-(NSString *)rollTheDice {
    return diceArray[arc4random_uniform(6)];
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
