//
//  AdditionQuestion.h
//  Maths
//
//  Created by Jenny Nguyen on 2016-11-01.
//  Copyright © 2016 LightHouseLabs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <stdlib.h>
#import "ScoreKeeper.h"

@interface AdditionQuestion : NSObject

@property (nonatomic, assign) int number1;
@property (nonatomic, assign) int number2;
@property (nonatomic, assign) int realAnswer;
@property (nonatomic, strong) NSString *aQuestion;
@property (nonatomic, strong) NSString *correctAnswerString;
@property (nonatomic, strong) NSDate *startTime;
@property (nonatomic, strong) NSDate *endTime;
@property (nonatomic, strong) NSDate *answerTime;
@property (nonatomic, strong) NSInteger rightValue;
@property (nonatomic, strong) NSInteger leftValue;

-(NSTimeInterval)timeIntervalSinceDate:(NSDate*)startTime;
-(void)generateQuestion;


-(id)init;

-(void)evaluateAnswer:(NSString *)realAnswer;

@end
