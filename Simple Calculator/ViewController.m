//
//  ViewController.m
//  Simple Calculator
//
//  Created by Ian Vergara on 3/25/13.
//  Copyright (c) 2013 Ian Vergara. All rights reserved.
//  ian.vergara@gmail.com

#import "ViewController.h"
#include <math.h>

@interface ViewController () {
    double operand;
    double total;
    bool decimalFlag;
    bool operating;
    bool reset;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    operand = 0;
    total = 0;
    decimalFlag = FALSE;
    operating = FALSE;
    reset = FALSE;
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) resetCalc {
    _displayField.text = @"0";
    _operatorLabel.text = @"";
    operand = 0;
    total = 0;
    decimalFlag = FALSE;
    reset = FALSE;
}

- (IBAction)clearButton:(UIButton *)sender {
    [self resetCalc];
}

- (IBAction)sqrtButton:(UIButton *)sender {
    double temp = sqrt(_displayField.text.doubleValue);
    NSNumber* display = [NSNumber numberWithDouble:(temp)];
    _displayField.text = [NSString stringWithFormat: @"%@", display];
}

- (IBAction)signButton:(UIButton *)sender {
    double temp = -1 * _displayField.text.doubleValue;
    NSNumber* display = [NSNumber numberWithDouble:(temp)];
    _displayField.text = [NSString stringWithFormat: @"%@", display];
}

- (IBAction)decimalButton:(UIButton *)sender {
    if (decimalFlag == FALSE) {
        NSString* temp = [NSString stringWithFormat:@"%@.", _displayField.text];
        _displayField.text = temp;
        decimalFlag = TRUE;
        operating = FALSE;
    }
}

- (IBAction)multiplicationButton:(UIButton *)sender {
    reset = FALSE;
    if ([_operatorLabel.text isEqual: @"×"]) {
        [self operate:operand];
        [self updateDisplay];
    }
    else{
        _operatorLabel.text = @"×";
        [self operate:operand];
        operating = TRUE;
    }
}

- (IBAction)divisionButton:(UIButton *)sender {  
    reset = FALSE;
    if ([_operatorLabel.text isEqual: @"÷"]) {
        [self operate:operand];
        [self updateDisplay];
    }
    else{
        _operatorLabel.text = @"÷";
        [self operate:operand];
        operating = TRUE;
    }
}

- (IBAction)additionButton:(UIButton *)sender {
    reset = FALSE;
    if ([_operatorLabel.text isEqual: @"+"]) {
        [self operate:operand];
        [self updateDisplay];
    }
    else{
        _operatorLabel.text = @"+";
        [self operate:operand];
        operating = TRUE;
    }
}

- (IBAction)subtractionButton:(UIButton *)sender {
    reset = FALSE;
    if ([_operatorLabel.text isEqual: @"−"]) {
        [self operate:operand];
        [self updateDisplay];
    }
    else{
        _operatorLabel.text = @"−";
        [self operate:operand];
        operating = TRUE;
    }
}

- (IBAction)equalsButton:(UIButton *)sender {
    [self operate:operand];
    [self updateDisplay];
    _operatorLabel.text = @"";
    operand = 0;
    reset = TRUE;
}


- (void) operate:(double)a{
    if ([_operatorLabel.text isEqual: @"+"]) {
        total += a;
    }
    if ([_operatorLabel.text isEqual: @"−"]) {
        if(total != 0){
            total -= a;
        }
        else{
            total = a;
        }
    }
    if ([_operatorLabel.text isEqual: @"×"]) {
        if(total != 0){
            total *= a;
        }
        else{
            total = a;
        }
    }
    if ([_operatorLabel.text isEqual: @"÷"]) {
        if (a != 0) {
            if(total != 0){
                total /= a;
            }
            else{
                total = a;
            }
        }
        else{
            _displayField.text = @"Error";
        }
    }
}

-(void) updateDisplay {
    NSNumber* display = [NSNumber numberWithDouble:(total)];
    _displayField.text = [NSString stringWithFormat: @"%@", display];
}


- (IBAction)zero:(UIButton *)sender {
    if (operating) {
        _displayField.text = @"0";
        operating = FALSE;
    }
    if (reset) {
        [self resetCalc];
    }
    
    if ([_displayField.text isEqual: @"0"]) {
        _displayField.text = @"0";
        operand = _displayField.text.doubleValue;
    }
    else {
        NSString* temp = [NSString stringWithFormat:@"%@0", _displayField.text];
        _displayField.text = temp;
        operand = _displayField.text.doubleValue;
    }
}

- (IBAction)one:(UIButton *)sender {
    if (operating) {
        _displayField.text = @"0";
        operating = FALSE;
    }
    if (reset) {
        [self resetCalc];
    }
    
    if ([_displayField.text isEqual: @"0"]) {
        _displayField.text = @"1";
        operand = _displayField.text.doubleValue;
    }
    else {
        NSString* temp = [NSString stringWithFormat:@"%@1", _displayField.text];
        _displayField.text = temp;
        operand = _displayField.text.doubleValue;
    }
}

- (IBAction)two:(UIButton *)sender {
    if (operating) {
        _displayField.text = @"0";
        operating = FALSE;
    }
    if (reset) {
        [self resetCalc];
    }
    
    if ([_displayField.text isEqual: @"0"]) {
        _displayField.text = @"2";
        operand = _displayField.text.doubleValue;
    }
    else {
        NSString* temp = [NSString stringWithFormat:@"%@2", _displayField.text];
        _displayField.text = temp;
        operand = _displayField.text.doubleValue;
    }
}

- (IBAction)three:(UIButton *)sender {
    if (operating) {
        _displayField.text = @"0";
        operating = FALSE;
    }
    if (reset) {
        [self resetCalc];
    }
    
    if ([_displayField.text isEqual: @"0"]) {
        _displayField.text = @"3";
        operand = _displayField.text.doubleValue;
    }
    else {
        NSString* temp = [NSString stringWithFormat:@"%@3", _displayField.text];
        _displayField.text = temp;
        operand = _displayField.text.doubleValue;
    }
}

- (IBAction)four:(UIButton *)sender {
    if (operating) {
        _displayField.text = @"0";
        operating = FALSE;
    }
    if (reset) {
        [self resetCalc];
    }
    
    if ([_displayField.text isEqual: @"0"]) {
        _displayField.text = @"4";
        operand = _displayField.text.doubleValue;
    }
    else {
        NSString* temp = [NSString stringWithFormat:@"%@4", _displayField.text];
        _displayField.text = temp;
        operand = _displayField.text.doubleValue;
    }
}

- (IBAction)five:(UIButton *)sender {
    if (operating) {
        _displayField.text = @"0";
        operating = FALSE;
    }
    if (reset) {
        [self resetCalc];
    }
    
    if ([_displayField.text isEqual: @"0"]) {
        _displayField.text = @"5";
        operand = _displayField.text.doubleValue;
    }
    else {
        NSString* temp = [NSString stringWithFormat:@"%@5", _displayField.text];
        _displayField.text = temp;
        operand = _displayField.text.doubleValue;
    }
}

- (IBAction)six:(UIButton *)sender {
    if (operating) {
        _displayField.text = @"0";
        operating = FALSE;
    }
    if (reset) {
        [self resetCalc];
    }
    
    if ([_displayField.text isEqual: @"0"]) {
        _displayField.text = @"6";
        operand = _displayField.text.doubleValue;
    }
    else {
        NSString* temp = [NSString stringWithFormat:@"%@6", _displayField.text];
        _displayField.text = temp;
        operand = _displayField.text.doubleValue;
    }
}

- (IBAction)seven:(UIButton *)sender {
    if (operating) {
        _displayField.text = @"0";
        operating = FALSE;
    }
    if (reset) {
        [self resetCalc];
    }
    
    if ([_displayField.text isEqual: @"0"]) {
        _displayField.text = @"7";
        operand = _displayField.text.doubleValue;
    }
    else {
        NSString* temp = [NSString stringWithFormat:@"%@7", _displayField.text];
        _displayField.text = temp;
        operand = _displayField.text.doubleValue;
    }
}

- (IBAction)eight:(UIButton *)sender {
    if (operating) {
        _displayField.text = @"0";
        operating = FALSE;
    }
    if (reset) {
        [self resetCalc];
    }
    
    if ([_displayField.text isEqual: @"0"]) {
        _displayField.text = @"8";
        operand = _displayField.text.doubleValue;
    }
    else {
        NSString* temp = [NSString stringWithFormat:@"%@8", _displayField.text];
        _displayField.text = temp;
        operand = _displayField.text.doubleValue;
    }
}

- (IBAction)nine:(UIButton *)sender {
    if (operating) {
        _displayField.text = @"0";
        operating = FALSE;
    }
    if (reset) {
        [self resetCalc];
    }
    
    if ([_displayField.text isEqual: @"0"]) {
        _displayField.text = @"9";
        operand = _displayField.text.doubleValue;
    }
    else {
        NSString* temp = [NSString stringWithFormat:@"%@9", _displayField.text];
        _displayField.text = temp;
        operand = _displayField.text.doubleValue;
    }
}
@end
