//
//  main.m
//  Maths
//
//  Created by Jenny Nguyen on 2016-11-01.
//  Copyright © 2016 LightHouseLabs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "ScoreKeeper.h"
#import "InputHandler.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        
        QuestionManager *questionsManager = [[QuestionManager alloc]init];
        QuestionFactory *questionFactory = [[QuestionFactory alloc]init];

        Question *question = [[Question alloc]init];
        [QuestionManager.questions addObject:AdditionQuestion];
        
        
                BOOL gameOn = YES;
                NSLog(@"MATHS!\n\n\n");
                NSString *right = @"Right!\n";
                NSString *wrong = @"Wrong!\n";
                ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc] init];
                InputHandler *inputHandler = [[InputHandler alloc] init];
        
        NSArray *questionSubclassNames =
        @[@"AdditionQuestion", @"SubtractionQuestion",@"MultiplcationQuestion", @"DivisionQuestion"];
        
        [[NSClassFromString(className) alloc]init];

                while (gameOn) {

                    Question *randomQuestion = [questionFactory questionSelector];
                    [questionsManager addEquationtoMutArray:randomQuestion];
                    
                    
                    
                    
                    
                    
                    
        
        char answer[255];
        
        ScoreKeeper *yourScore = [[ScoreKeeper alloc]init];

        
        while (YES) {
            
            Question *question = [[Question alloc]init];
            
            NSLog(@"%@", question.aQuestion);
            
            InputHandler *userInput = [[InputHandler alloc]init];
            
            NSString *answerString = [userInput parsedInput];
            
                       
            
            if ([answerString isEqualToString:@"quit"]) {
                NSLog(@"You got %d correct, and %d wrong,", yourScore.correct, yourScore.wrong);
                
                break;
            }
            
            if ([question.correctAnswerString isEqualToString:answerString]) {
                NSLog(@"Correct!");
                [yourScore gotOneRight];
                
                
            } else {
                NSLog(@"Wrong!");
                [yourScore gotOneWrong];
                
                
            }

            
            
        }
    
        
        
    }
    return 0;
    }
}
