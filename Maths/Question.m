//
//  AdditionQuestion.m
//  Maths
//
//  Created by Jenny Nguyen on 2016-11-01.
//  Copyright © 2016 LightHouseLabs. All rights reserved.
//

#import "AdditionQuestion.h"
#import "QuestionManager.h"

@implementation AdditionQuestion

-(int)randomValue { 
    
    int lowerBound = 10;
    int upperBound = 100;
    
    
    int randomNumber = lowerBound + arc4random() % (upperBound - lowerBound);
    
    return randomNumber;
}

- (NSString *)correctAnswerString {
    _endTime = [NSDate date];
    return _correctAnswerString;
}

-(id) init {
    self = [super init];
    
    _number1 =[self randomValue];
    _number2 =[self randomValue];
    
    _aQuestion =[NSString stringWithFormat:@"What is %d + %d", _number1, _number2];
    
    _realAnswer = _number1 + _number2;
    
    _correctAnswerString = [NSString stringWithFormat:@"%d", self.realAnswer];
    
    _startTime = [NSDate date];
    
   return self;
    
       }

-(int)answerTime {
    int diff = [_endTime timeIntervalSinceDate:_startTime];
    return diff;
}
    

@end

