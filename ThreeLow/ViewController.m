//
//  ViewController.m
//  ThreeLow
//
//  Created by Alex on 2015-06-16.
//  Copyright (c) 2015 Alex. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.game = [[GameModel alloc] initWithDice];
    [self refreshView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (IBAction)holdDice1:(id)sender {
    [self.diceButton1 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    Dice *tempDice = self.game.diceArray[0];
     tempDice.isCurrentlyHeld = YES;
}

- (IBAction)holdDice2:(id)sender {
    [self.diceButton2 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    Dice *tempDice = self.game.diceArray[1];
    tempDice.isCurrentlyHeld = YES;
}

- (IBAction)holdDice3:(id)sender {
    [self.diceButton3 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    Dice *tempDice = self.game.diceArray[2];
    tempDice.isCurrentlyHeld = YES;
}

- (IBAction)holdDice4:(id)sender {
    [self.diceButton4 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    Dice *tempDice = self.game.diceArray[3];
    tempDice.isCurrentlyHeld = YES;
}

- (IBAction)holdDice5:(id)sender {
    [self.diceButton5 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    Dice *tempDice = self.game.diceArray[4];
    tempDice.isCurrentlyHeld = YES;
}

- (IBAction)rollDice:(id)sender {
    [self.game rollAllDice];
    [self refreshView];
}

- (IBAction)resetDice:(id)sender {
    [self.game resetDice];
    [self.game rollAllDice];
    [self refreshView];
    
    
}

-(void)refreshView {
    NSLog(@"%@", self.game.diceArray);
    [self refreshButton:self.diceButton1 forButtonNumber:1];
    [self refreshButton:self.diceButton2 forButtonNumber:2];
    [self refreshButton:self.diceButton3 forButtonNumber:3];
    [self refreshButton:self.diceButton4 forButtonNumber:4];
    [self refreshButton:self.diceButton5 forButtonNumber:5];
 }

-(void)refreshButton:(UIButton *)button forButtonNumber:(int)buttonNumber
{
    NSArray *diceImages = @[@"X", @"⚀", @"⚁", @"⚂", @"⚃", @"⚄", @"⚅"];
    
   // for(int i = 0; i < [self.game.diceArray count]; i++) {
        NSLog(@"for loop began");
        Dice *tempDie = self.game.diceArray[buttonNumber-1];
        int dieValue = tempDie.dieValue;
        BOOL isHeld = tempDie.isCurrentlyHeld;
        
        if(dieValue == 1) {
            [button setTitle:diceImages[1] forState:UIControlStateNormal];
            NSLog(@"dice image: %@", diceImages[1]);
        }
        else if(dieValue == 2) {
           [button setTitle:diceImages[2] forState:UIControlStateNormal];
        }
        else if (dieValue == 3) {
            [button setTitle:diceImages[3] forState:UIControlStateNormal];
        }
        else if(dieValue == 4) {
            [button setTitle:diceImages[4] forState:UIControlStateNormal];
        }
        else if(dieValue == 5) {
           [button setTitle:diceImages[5] forState:UIControlStateNormal];
        }
        if(isHeld){
            [button setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
        }
        else {
            [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        }
   // }
   
}



@end
