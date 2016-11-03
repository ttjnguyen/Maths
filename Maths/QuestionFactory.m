
//
//  QuestionFactory.m
//  Maths
//
//  Created by Jenny Nguyen on 2016-11-02.
//  Copyright © 2016 LightHouseLabs. All rights reserved.
//

#import "QuestionFactory.h"


@implementation QuestionFactory

-(int)ranValue {
    int lowerBound = 0;
    int upperBound = 4;
    int rndValue = lowerBound + arc4random() % (upperBound - lowerBound);
    NSLog(@"random number = %i", rndValue);
    return rndValue;
}

-(id)init {
    self = [super init];
    if(self) {
        _questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"MultiplicationQuestion", @"DivisionQuestion"];
    }
    return self;
}
-(Question *)generateRandomQuestion {
    NSString *gType = [self.questionSubclassNames objectAtIndex:[self ranValue]];
    return [[NSClassFromString(qtype) alloc]init];
}

-(void)generateRandomQuestion {
    
    }
}

@end

