//
//  GameModel.h
//  ThreeLow
//
//  Created by Alex on 2015-06-16.
//  Copyright (c) 2015 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dice.h"

@interface GameModel : NSObject

@property(nonatomic, strong) NSArray *diceArray;

@property(nonatomic, strong) NSMutableArray *heldDiceArray;

-(instancetype)initWithDice;

-(void)rollAllDice;

-(void)resetUnheldDice;


@end
