//
//  ViewController.h
//  Simple Calculator
//
//  Created by Ian Vergara on 3/25/13.
//  Copyright (c) 2013 Ian Vergara. All rights reserved.
//  ian.vergara@gmail.com

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *displayField;
@property (weak, nonatomic) IBOutlet UILabel *operatorLabel;

- (IBAction)clearButton:(UIButton *)sender;
- (IBAction)sqrtButton:(UIButton *)sender;
- (IBAction)signButton:(UIButton *)sender;
- (IBAction)decimalButton:(UIButton *)sender;
- (IBAction)multiplicationButton:(UIButton *)sender;
- (IBAction)divisionButton:(UIButton *)sender;
- (IBAction)additionButton:(UIButton *)sender;
- (IBAction)subtractionButton:(UIButton *)sender;
- (IBAction)equalsButton:(UIButton *)sender;

- (IBAction)zero:(UIButton *)sender;
- (IBAction)one:(UIButton *)sender;
- (IBAction)two:(UIButton *)sender;
- (IBAction)three:(UIButton *)sender;
- (IBAction)four:(UIButton *)sender;
- (IBAction)five:(UIButton *)sender;
- (IBAction)six:(UIButton *)sender;
- (IBAction)seven:(UIButton *)sender;
- (IBAction)eight:(UIButton *)sender;
- (IBAction)nine:(UIButton *)sender;
@end
