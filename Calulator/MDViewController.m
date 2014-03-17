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

- (IBAction)Zero:(id)sender {
    if((DisplayField.text.length == 1) && [DisplayField.text isEqualToString:@"0"])
        DisplayField.text = @"0";
    else
        DisplayField.text = [DisplayField.text stringByAppendingString:@"0"];
}

- (IBAction)One:(id)sender {
    if((DisplayField.text.length == 1) && [DisplayField.text isEqualToString:@"0"])
        DisplayField.text = @"1";
    else
        DisplayField.text = [DisplayField.text stringByAppendingString:@"1"];
}

- (IBAction)Two:(id)sender {
    if((DisplayField.text.length == 1) && [DisplayField.text isEqualToString:@"0"])
        DisplayField.text = @"2";
    else
        DisplayField.text = [DisplayField.text stringByAppendingString:@"2"];
}

- (IBAction)Three:(id)sender {
    if((DisplayField.text.length == 1) && [DisplayField.text isEqualToString:@"0"])
        DisplayField.text = @"3";
    else
        DisplayField.text = [DisplayField.text stringByAppendingString:@"3"];
}

- (IBAction)Four:(id)sender {
}

- (IBAction)Five:(id)sender {
}

- (IBAction)Six:(id)sender {
}

- (IBAction)Seven:(id)sender {
}

- (IBAction)Eight:(id)sender {
    DisplayField.text = 0;
}

- (IBAction)Nine:(id)sender {
}

- (IBAction)Decimal:(id)sender {
}

- (IBAction)Plus:(id)sender {
}

- (IBAction)Minus:(id)sender {
}

- (IBAction)Multiply:(id)sender {
}

- (IBAction)Divide:(id)sender {
}

- (IBAction)Equals:(id)sender {
}

- (IBAction)Clear:(id)sender {
    //Clear display
    DisplayField.text = @"0";
    //clear any info in class through function call
}

- (void) testing{
    [CalculatorEngine mainCalculator];// *temp = [[CalculatorEngine alloc] init];
}
 
@end
