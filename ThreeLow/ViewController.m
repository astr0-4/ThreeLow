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
    
    self.diceButton1.titleLabel.text = [self.game rollTheDice:self.game.diceArray[0]];
    self.diceButton2.titleLabel.text = [self.game rollTheDice:self.game.diceArray[1]];
    self.diceButton3.titleLabel.text = [self.game rollTheDice:self.game.diceArray[2]];
    self.diceButton4.titleLabel.text = [self.game rollTheDice:self.game.diceArray[3]];
    self.diceButton5.titleLabel.text = [self.game rollTheDice:self.game.diceArray[4]];
}

- (IBAction)resetDice:(id)sender {
        if(self.game.diceArray[0]) {
            self.diceButton1.titleLabel.text = @"⚀";
            [self.diceButton1 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        }
        else if (self.game.diceArray[1]){
            self.diceButton2.titleLabel.text = @"⚁";
            [self.diceButton2 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        }
        else if (self.game.diceArray[2]){
            self.diceButton3.titleLabel.text = @"⚂";
            [self.diceButton3 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        }
        else if (self.game.diceArray[3]) {
            self.diceButton4.titleLabel.text = @"⚂";
            [self.diceButton4 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        }
        else if (self.game.diceArray[4]) {
            self.diceButton5.titleLabel.text = @"⚃";
            [self.diceButton5 setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        }
}

-(void)refreshView {
        NSArray *diceImages = @[@"⚀", @"⚁", @"⚂", @"⚃", @"⚄", @"⚅"];
        self.diceButton1.titleLabel.text = diceImages[0];
        self.diceButton2.titleLabel.text = diceImages[1];
        self.diceButton3.titleLabel.text = diceImages[2];
        self.diceButton4.titleLabel.text = diceImages[3];
        self.diceButton5.titleLabel.text = diceImages[4];
}



@end
