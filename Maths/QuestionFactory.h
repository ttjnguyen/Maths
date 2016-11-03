//
//  QuestionFactory.h
//  Maths
//
//  Created by Jenny Nguyen on 2016-11-02.
//  Copyright © 2016 LightHouseLabs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import <stdlib.h>

@interface QuestionFactory : NSObject

@property (nonatomic,strong) NSArray *questionSubclassNames;

-(Question *)generateRandomQuestion;

-(Question *)questionSelector;

@end
