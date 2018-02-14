//
//  main.m
//  Maths
//
//  Created by Nathan Hsu on 2018-02-13.
//  Copyright © 2018 Nathan Hsu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc]init];
        while(gameOn) {
            
            AdditionQuestion *currentQuestion = [[AdditionQuestion alloc]init];
            NSLog(@"%@", currentQuestion.question);
            

            InputHandler *currentInputHandler = [[InputHandler alloc]init];
            NSString *parsedUserAnswer = [currentInputHandler queryUser];
        
            
            //check if user input "quit"
            if ([parsedUserAnswer isEqualToString: @"quit"]) {
                gameOn = NO;
                NSLog(@"You typed quit");
                continue;
            }

            if (currentQuestion.answer == parsedUserAnswer.intValue) {
                NSLog(@"You sexy genius!");
                [scoreKeeper updateScore:YES];
                NSLog(@"Current score: Corrects: %i Mistakes: %i", scoreKeeper.corrects, scoreKeeper.mistakes);
                
            } else {
                NSLog(@"Try again");
                [scoreKeeper updateScore:NO];
                NSLog(@"Current score: Corrects: %i Mistakes: %i", scoreKeeper.corrects, scoreKeeper.mistakes);
            }
          
        }
        
    }
    return 0;
}
