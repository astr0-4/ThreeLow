//
//  ViewController.m
//  ThreeLow
//
//  Created by Alex on 2015-06-16.
//  Copyright (c) 2015 Alex. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIButton *score;

@end

@implementation ViewController {
    int rollCount;
    int heldDiceCount;
    int currentScore;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.game = [[GameModel alloc] initWithDice];
    [self refreshView];
    rollCount = 0;
    heldDiceCount = 0;
    currentScore = 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (IBAction)holdDice1:(id)sender
{
    heldDiceCount++;
    [self.diceButton1 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    Dice *tempDice = self.game.diceArray[0];
     tempDice.isCurrentlyHeld = YES;
    currentScore += [tempDice.dieValue intValue];
    self.score.titleLabel.text = [NSString stringWithFormat: @"%d", currentScore];
}

- (IBAction)holdDice2:(id)sender
{
    heldDiceCount++;
    [self.diceButton2 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    Dice *tempDice = self.game.diceArray[1];
    tempDice.isCurrentlyHeld = YES;
    currentScore += [tempDice.dieValue intValue];
    self.score.titleLabel.text = [NSString stringWithFormat: @"%d", currentScore];
}

- (IBAction)holdDice3:(id)sender
{
    heldDiceCount++;
    [self.diceButton3 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    Dice *tempDice = self.game.diceArray[2];
    tempDice.isCurrentlyHeld = YES;
    currentScore += [tempDice.dieValue intValue];
    self.score.titleLabel.text = [NSString stringWithFormat: @"%d", currentScore];
}

- (IBAction)holdDice4:(id)sender
{
    heldDiceCount++;
    [self.diceButton4 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    Dice *tempDice = self.game.diceArray[3];
    tempDice.isCurrentlyHeld = YES;
    currentScore += [tempDice.dieValue intValue];
    self.score.titleLabel.text = [NSString stringWithFormat: @"%d", currentScore];
}

- (IBAction)holdDice5:(id)sender
{
    heldDiceCount++;
    [self.diceButton5 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
    Dice *tempDice = self.game.diceArray[4];
    tempDice.isCurrentlyHeld = YES;
    currentScore += [tempDice.dieValue intValue];
    self.score.titleLabel.text = [NSString stringWithFormat: @"%d", currentScore];
}

- (IBAction)rollDice:(id)sender
{
   
    if(rollCount <= heldDiceCount) {
         rollCount++;
        [self.game rollAllDice];
        [self.game heldDiceArray];
        [self refreshView];
    }
    NSLog(@"roll count: %d", rollCount);
    NSLog(@"held dice count: %d", heldDiceCount);
}

- (IBAction)resetDice:(id)sender
{
    [self.game resetUnheldDice];
    [self.game rollAllDice];
    rollCount = 0;
    heldDiceCount = 0;
    currentScore = 0;
    [self refreshView];
}

-(void)refreshView
{
    [self refreshButton:self.diceButton1 forButtonNumber:1];
    [self refreshButton:self.diceButton2 forButtonNumber:2];
    [self refreshButton:self.diceButton3 forButtonNumber:3];
    [self refreshButton:self.diceButton4 forButtonNumber:4];
    [self refreshButton:self.diceButton5 forButtonNumber:5];
 }

-(void)refreshButton:(UIButton *)button forButtonNumber:(int)buttonNumber
{
    NSArray *diceImages = @[@"☺", @"⚀", @"⚁", @"⚂", @"⚃", @"⚄", @"⚅"];
        Dice *tempDie = self.game.diceArray[buttonNumber-1];
        NSNumber *dieValue = tempDie.dieValue;
        BOOL isHeld = tempDie.isCurrentlyHeld;
        if([dieValue isEqual: @0]) {
            [button setTitle:diceImages[0] forState:UIControlStateNormal];
        }
        else if([dieValue isEqual: @1]) {
            [button setTitle:diceImages[1] forState:UIControlStateNormal];
        }
        else if([dieValue isEqual: @2]) {
           [button setTitle:diceImages[2] forState:UIControlStateNormal];
        }
        else if ([dieValue isEqual: @3]) {
            [button setTitle:diceImages[3] forState:UIControlStateNormal];
        }
        else if([dieValue isEqual: @4]) {
            [button setTitle:diceImages[4] forState:UIControlStateNormal];
        }
        else if([dieValue isEqual: @5]) {
           [button setTitle:diceImages[5] forState:UIControlStateNormal];
        }
        else if([dieValue isEqual:@6]) {
            [button setTitle:diceImages[6] forState:UIControlStateNormal];
        }
        if(isHeld){
            [button setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
        }
        else {
            [button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        }
}

@end
