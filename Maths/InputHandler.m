//
//  InputHandler.m
//  Maths
//
//  Created by Jenny Nguyen on 2016-11-01.
//  Copyright © 2016 LightHouseLabs. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

-(NSString*)parsedInput {
    
    char answer[255];
    
    fgets(answer, 255, stdin);
    
    NSString *answerString = [NSString stringWithCString:answer encoding:NSUTF8StringEncoding];
    
    answerString = [answerString stringByTrimmingCharactersInSet:[NSCharacterSet newlineCharacterSet]];

    return answerString;
}


@end
