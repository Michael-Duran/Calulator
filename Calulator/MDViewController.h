//
//  MDViewController.h
//  Calulator
//
//  Created by Michael on 3/4/14.
//  Copyright (c) 2014 Macbook Air. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MDViewController : UIViewController

@property (strong, nonatomic) IBOutlet UITextField *DisplayField;

- (void) operandPressed:(NSString*) op;

- (IBAction)Zero:(id)sender;
- (IBAction)One:(id)sender;
- (IBAction)Two:(id)sender;
- (IBAction)Three:(id)sender;
- (IBAction)Four:(id)sender;
- (IBAction)Five:(id)sender;
- (IBAction)Six:(id)sender;
- (IBAction)Seven:(id)sender;
- (IBAction)Eight:(id)sender;
- (IBAction)Nine:(id)sender;
- (IBAction)Decimal:(id)sender;

- (IBAction)Plus:(id)sender;
- (IBAction)Minus:(id)sender;
- (IBAction)Multiply:(id)sender;
- (IBAction)Divide:(id)sender;
- (IBAction)Equals:(id)sender;
- (IBAction)Clear:(id)sender;

//- (void) testing;


@end
