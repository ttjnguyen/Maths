//
//  QuestionManager.h
//  Maths
//
//  Created by Jenny Nguyen on 2016-11-02.
//  Copyright © 2016 LightHouseLabs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface QuestionManager : NSObject

@property (nonatomic, strong) NSMutableArray *questions;
@property (nonatomic, strong) NSArray *questionSubclassNames;
@property (nonatomic) NSInteger *totalTime;

-(void)timeOutput;


@end
