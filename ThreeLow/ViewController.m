//
//  ViewController.m
//  ThreeLow
//
//  Created by Alex on 2015-06-16.
//  Copyright (c) 2015 Alex. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()

//@property (strong, nonatomic) GameModel *gameModel;
@property (strong, nonatomic) GameModel *diceArray;
@property (strong, nonatomic) Dice *dice;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.diceArray = [[GameModel alloc] initWithDice];
    self.dice = [[Dice alloc] init];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
   
    // Dispose of any resources that can be recreated.
}

- (IBAction)holdDice1:(id)sender {
    [self.dice1 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
     self.dice.diceCurrentlyHeld = YES;
//    NSMutableArray *heldDiceArray = [[NSMutableArray alloc] init];
//    [heldDiceArray addObject:self.dice1.titleLabel.text];
//    NSLog(@"%@", heldDiceArray);
}

- (IBAction)holdDice2:(id)sender {
    [self.dice2 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
}

- (IBAction)holdDice3:(id)sender {
    [self.dice3 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
}

- (IBAction)holdDice4:(id)sender {
    [self.dice4 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
}

- (IBAction)holdDice5:(id)sender {
    [self.dice5 setTitleColor:[UIColor greenColor] forState:UIControlStateNormal];
}

- (IBAction)rollDice:(id)sender {
    self.dice1.titleLabel.text = [self.diceArray rollTheDice];
    self.dice2.titleLabel.text = [self.diceArray rollTheDice];
    self.dice3.titleLabel.text = [self.diceArray rollTheDice];
    self.dice4.titleLabel.text = [self.diceArray rollTheDice];
    self.dice5.titleLabel.text = [self.diceArray rollTheDice];
}

- (IBAction)resetDice:(id)sender {
   // self.dice1.titleLabel.text = [self.diceArray[0]];
}




@end
