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

-(id)init;

-(void)evaluateAnswer:(NSString *)userAnswer;


@end
