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
// button.
- (void) operandPressed:(NSString*) op{
    if(overWriteDisplay || ((DisplayField.text.length == 1) && [DisplayField.text isEqualToString:@"0"])){
        DisplayField.text = op;
        overWriteDisplay = FALSE;
    }else
        DisplayField.text = [DisplayField.text stringByAppendingString:op];
}

//===== Operands =====

- (IBAction)Zero:(id)sender {
    [self operandPressed: @"0"];
    /*
    if(overWriteDisplay || ((DisplayField.text.length == 1) && [DisplayField.text isEqualToString:@"0"])){
        DisplayField.text = @"0";
        overWriteDisplay = FALSE;
    }else
        DisplayField.text = [DisplayField.text stringByAppendingString:@"0"];
     */
}

- (IBAction)One:(id)sender {
    [self operandPressed: @"1"];
    /*
    if(overWriteDisplay || ((DisplayField.text.length == 1) && [DisplayField.text isEqualToString:@"0"])){
        DisplayField.text = @"1";
        overWriteDisplay = FALSE;
    }else
        DisplayField.text = [DisplayField.text stringByAppendingString:@"1"];
     */
}

- (IBAction)Two:(id)sender {
    [self operandPressed: @"2"];
    /*
    if(overWriteDisplay || ((DisplayField.text.length == 1) && [DisplayField.text isEqualToString:@"0"])){
        DisplayField.text = @"2";
        overWriteDisplay = FALSE;
    }else
        DisplayField.text = [DisplayField.text stringByAppendingString:@"2"];
     */
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

//===== Operators =====
CalculatorEngine* calculation;

- (IBAction)Plus:(id)sender {
    
    calculation = [CalculatorEngine mainCalculator];
    
    // Pass operator and operand
    [calculation setOperand:DisplayField.text];
    [calculation setOperator:@"+"];
    
    // perform calculations
    [calculation calculate];
    
    // update display
    DisplayField.text = [calculation getDisplayValue];
    
    // set overwrite true. after operator is pressed, it will erase the screen
    // and fill it with the next input operands.
    overWriteDisplay = TRUE;
}

- (IBAction)Minus:(id)sender {
    
    calculation = [CalculatorEngine mainCalculator];
    
    // Pass operator and operand
    [calculation setOperand:DisplayField.text];
    [calculation setOperator:@"-"];
    
    // perform calculations
    [calculation calculate];
    
    // update display
    DisplayField.text = [calculation getDisplayValue];
    
    // set overwrite true. after operator is pressed, it will erase the screen
    // and fill it with the next input operands.
    overWriteDisplay = TRUE;
}

- (IBAction)Multiply:(id)sender {
    
    calculation = [CalculatorEngine mainCalculator];
    
    // Pass operator and operand
    [calculation setOperand:DisplayField.text];
    [calculation setOperator:@"*"];
    
    // perform calculations
    [calculation calculate];
    
    // update display
    DisplayField.text = [calculation getDisplayValue];
    
    // set overwrite true. after operator is pressed, it will erase the screen
    // and fill it with the next input operands.
    overWriteDisplay = TRUE;
}

- (IBAction)Divide:(id)sender {
    
    calculation = [CalculatorEngine mainCalculator];
    
    // Pass operator and operand
    [calculation setOperand:DisplayField.text];
    [calculation setOperator:@"/"];
    
    // perform calculations
    [calculation calculate];
    
    // update display
    DisplayField.text = [calculation getDisplayValue];
    
    // set overwrite true. after operator is pressed, it will erase the screen
    // and fill it with the next input operands.
    overWriteDisplay = TRUE;
}

- (IBAction)Equals:(id)sender {
    
    calculation = [CalculatorEngine mainCalculator];
    
    // Pass operator and operand
    [calculation setOperand:DisplayField.text];
    [calculation setOperator:@"="];
    
    // perform calculations
    [calculation calculate];
    
    // update display
    DisplayField.text = [calculation getDisplayValue];
    
    // set overwrite true. after operator is pressed, it will erase the screen
    // and fill it with the next input operands.
    overWriteDisplay = TRUE;
}

- (IBAction)Clear:(id)sender {
    //Clear display
    DisplayField.text = @"0";
    
    //clear any info in class through function call
    [calculation clear];
}


 
@end
