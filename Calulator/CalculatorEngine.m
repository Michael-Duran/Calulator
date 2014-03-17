//
//  CalculatorEngine.m
//  Calulator
//
//  Created by Michael on 3/5/14.
//  Copyright (c) 2014 Macbook Air. All rights reserved.
//

#import "CalculatorEngine.h"

static CalculatorEngine* _mainCalculator;

@implementation CalculatorEngine

+ (CalculatorEngine*) mainCalculator
{
    if(_mainCalculator == nil){
        _mainCalculator = [[CalculatorEngine alloc] init];
    }
    
    return _mainCalculator;
}

- (void) setOperand: (NSString*) operandPassed{
    _mainCalculator.currentOperand = operandPassed;
}

- (void) setOperator: (NSString*) operatorPassed{
    _mainCalculator.previousOperator = _mainCalculator.currentOperator;
    _mainCalculator.currentOperator = operatorPassed;
}

- (void) calculate{//: (NSString*) newOperand{
    // Before doing anything, check to see if there already exists a previousOperand.
    double prevOperand, currOperand ;
    if(_mainCalculator.previousOperand != nil){
        //convert previousOperand to double
        prevOperand = [_mainCalculator.previousOperand doubleValue];
        //convert second operand to double
        currOperand = [_mainCalculator.currentOperand doubleValue];
        
        //decide what operator is ( +, -, *, /, =, C)
        if([_mainCalculator.previousOperator isEqualToString:@"+"]){
            prevOperand += currOperand;
        }else if([_mainCalculator.previousOperator isEqualToString:@"-"]){
            prevOperand -= currOperand;
        }else if([_mainCalculator.previousOperator isEqualToString:@"*"]){
            prevOperand *= currOperand;
        }else if([_mainCalculator.previousOperator isEqualToString:@"/"]){
            prevOperand /= currOperand;
        }
        
        //convert prevOperand into nsstring
        _mainCalculator.previousOperand = [NSString stringWithFormat:@"%f", prevOperand];
        // set the value to display to the prev value (which was just calculated)
        _mainCalculator.valueToDisplay = _mainCalculator.previousOperand;
        
        if([_mainCalculator.currentOperator isEqualToString:@"="]){
            _mainCalculator.previousOperand = nil;
        }
        
    //else set the previousOperand to currentOperand
    }else{
        _mainCalculator.previousOperand = _mainCalculator.currentOperand;
        _mainCalculator.valueToDisplay = _mainCalculator.previousOperand;
    }
}

- (NSString*) getDisplayValue{
    return _mainCalculator.valueToDisplay;
}

- (void) clear{
    _mainCalculator.previousOperator = nil;
    _mainCalculator.currentOperator = nil;
    _mainCalculator.previousOperand = nil;
    _mainCalculator.currentOperand = nil;
}


@end
