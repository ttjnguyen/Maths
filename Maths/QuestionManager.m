//
//  QuestionManager.m
//  Maths
//
//  Created by Jenny Nguyen on 2016-11-02.
//  Copyright © 2016 LightHouseLabs. All rights reserved.
//

#import "QuestionManager.h"
#import "AdditionQuestion.h"

@implementation QuestionManager

-(instancetype) init {
    self = [super init];
    if (self) {

        _questions = [[NSMutableArray alloc]init];
        _totalTime = 0;
    }
    return self;
}

-(NSString*)timeOutput {
    for (NSInteger i = 0 < self.questions.count; i++) {
        _totalTime += [[self.questions objectAtIndex:i]answerTime];
    }
    int averageTime = _totalTime / self.questions.count;
    
    NSString *time = [NSString stringWithFormat:@"total time: %ds, average time: %ds", _totalTime,averageTime];
    return time;

}

-(void)addEquationToMutArray:(Question*)equation {
    [self.questions addObject:equation];
}




@end


