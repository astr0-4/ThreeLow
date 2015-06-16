//
//  GameModel.h
//  ThreeLow
//
//  Created by Alex on 2015-06-16.
//  Copyright (c) 2015 Alex. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface GameModel : NSObject

@property(nonatomic, weak) NSString *diceImage;
@property(nonatomic, strong) NSArray *diceArray;

-(instancetype)initWithDice;
-(NSString *)rollTheDice;

@end
