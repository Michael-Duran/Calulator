//
//  CalculatorEngine.h
//  Calulator
//
//  Created by Michael on 3/5/14.
//  Copyright (c) 2014 Macbook Air. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CalculatorEngine : NSObject

@property (retain, nonatomic) NSString* previousOperand;
@property(retain, nonatomic) NSString* currentOperand;
@property (retain, nonatomic) NSString* previousOperator;
@property (retain, nonatomic) NSString* currentOperator;
@property (retain, nonatomic) NSString*  valueToDisplay;

+ (CalculatorEngine*) mainCalculator;

- (void) setOperand: (NSString*) operandPassed;
- (void) setOperator: (NSString*) operatorPassed;
- (void) calculate;
- (NSString*) getDisplayValue;
- (void) clear;

@end
