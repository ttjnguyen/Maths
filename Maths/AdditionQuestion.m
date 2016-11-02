//
//  AdditionQuestion.m
//  Maths
//
//  Created by Jenny Nguyen on 2016-11-01.
//  Copyright © 2016 LightHouseLabs. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

-(int)randomValue { 
    
    int lowerBound = 10;
    int upperBound = 100;
    
    
    int randomNumber = lowerBound + arc4random() % (upperBound - lowerBound);
    
    return randomNumber;
}
-(id) init {
    self = [super init];
    
    _number1 =[self randomValue];
    _number2 =[self randomValue];
    
    _newQuestion =[NSString stringWithFormat:@"What is %d + %d", _number1, _number2];
    
    _realAnswer = _number1 + _number2;
    
    _correctAnswerString = [NSString stringWithFormat:@"%d", self.realAnswer];
    
    return self;
}



@end
