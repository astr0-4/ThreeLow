//
//  ViewController.h
//  ThreeLow
//
//  Created by Alex on 2015-06-16.
//  Copyright (c) 2015 Alex. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GameModel.h"
#import "Dice.h"

@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *dice1;
@property (weak, nonatomic) IBOutlet UIButton *dice2;
@property (weak, nonatomic) IBOutlet UIButton *dice3;
@property (weak, nonatomic) IBOutlet UIButton *dice4;
@property (weak, nonatomic) IBOutlet UIButton *dice5;

@end

