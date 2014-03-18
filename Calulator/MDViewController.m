//
//  MDViewController.m
//  Calulator
//
//  Created by Michael on 3/4/14.
//  Copyright (c) 2014 Macbook Air. All rights reserved.
//

#import "MDViewController.h"
#import "CalculatorEngine.h"

@implementation MDViewController

CalculatorEngine* calculation;
bool overWriteDisplay = FALSE;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@synthesize DisplayField;

// This is a generalized function to try to reduce the amount of code in each
// button. Since each number button contained roughly the same code, this
// function is used for all operand buttons.
- (void) operandPressed:(NSString*) op{
    if(overWriteDisplay || ((DisplayField.text.length == 1) && [DisplayField.text isEqualToString:@"0"])){
        DisplayField.text = op;
        overWriteDisplay = FALSE;
    }else
        DisplayField.text = [DisplayField.text stringByAppendingString:op];
}

// Generalized function that reduces code needed for each operator that is
// pressed.
- (void) operatorPressed:(NSString*) sign{
    calculation = [CalculatorEngine mainCalculator];
    
    // Pass operator and operand
    [calculation setOperand:DisplayField.text];
    [calculation setOperator:sign];
    
    // perform calculations
    [calculation calculate];
    
    // update display
    DisplayField.text = [calculation getDisplayValue];
    
    // set overwrite true. after operator is pressed, it will erase the screen
    // and fill it with the next input operands.
    overWriteDisplay = TRUE;
}

//===== Operands ===============================================================

- (IBAction)Zero:(id)sender {
    [self operandPressed: @"0"];
}

- (IBAction)One:(id)sender {
    [self operandPressed: @"1"];
}

- (IBAction)Two:(id)sender {
    [self operandPressed: @"2"];
}

- (IBAction)Three:(id)sender {
    [self operandPressed: @"3"];
}

- (IBAction)Four:(id)sender {
    [self operandPressed: @"4"];
}

- (IBAction)Five:(id)sender {
    [self operandPressed: @"5"];
}

- (IBAction)Six:(id)sender {
    [self operandPressed: @"6"];
}

- (IBAction)Seven:(id)sender {
    [self operandPressed: @"7"];
}

- (IBAction)Eight:(id)sender {
    [self operandPressed: @"8"];
}

- (IBAction)Nine:(id)sender {
    [self operandPressed: @"9"];
}

- (IBAction)Decimal:(id)sender {
    [self operandPressed: @"."];
}

//===== Operators ==============================================================


- (IBAction)Plus:(id)sender {
    [self operatorPressed:@"+"];
}

- (IBAction)Minus:(id)sender {
    [self operatorPressed:@"-"];
}

- (IBAction)Multiply:(id)sender {
    [self operatorPressed:@"*"];
}

- (IBAction)Divide:(id)sender {
    [self operatorPressed:@"/"];
}

- (IBAction)Equals:(id)sender {
    [self operatorPressed:@"="];
}



- (IBAction)Clear:(id)sender {
    //Clear display
    DisplayField.text = @"0";
    
    //clear any info in class through function call
    [calculation clear];
}

@end
