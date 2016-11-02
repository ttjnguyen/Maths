//
//  ScoreKeeper.m
//  Maths
//
//  Created by Jenny Nguyen on 2016-11-01.
//  Copyright © 2016 LightHouseLabs. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(id)init {
    self = [super init];
        _correct = 0;
        _wrong = 0;
    
    return self;
}


-(void)gotOneRight {
    self.correct = self.correct + 1;
}

-(void)gotOneWrong {
    self.wrong = self.wrong + 1;
}




@end
