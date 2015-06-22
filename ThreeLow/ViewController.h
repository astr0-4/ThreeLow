//
//  ViewController.h
//  ThreeLow
//
//  Created by Alex on 2015-06-16.
//  Copyright (c) 2015 Alex. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GameModel.h"


@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UIButton *diceButton1;
@property (weak, nonatomic) IBOutlet UIButton *diceButton2;
@property (weak, nonatomic) IBOutlet UIButton *diceButton3;
@property (weak, nonatomic) IBOutlet UIButton *diceButton4;
@property (weak, nonatomic) IBOutlet UIButton *diceButton5;

@property (strong, nonatomic) GameModel *game;


@end

