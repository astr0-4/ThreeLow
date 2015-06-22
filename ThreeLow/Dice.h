//
//  Dice.h
//  ThreeLow
//
//  Created by Alex on 2015-06-16.
//  Copyright (c) 2015 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dice : NSObject

@property(nonatomic) BOOL isCurrentlyHeld;

@property(nonatomic) NSNumber *dieValue;

@property(nonatomic, strong) NSMutableArray* diceHeld;

-(void)rollTheDie;

@end
