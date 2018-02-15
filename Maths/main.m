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
#import "QuestionManager.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc]init];
        QuestionManager *questionManager = [[QuestionManager alloc]init];
        
        while(gameOn) {
            
            // create a new question
            AdditionQuestion *currentRoundQuestion = [[AdditionQuestion alloc]init];
            
            
            // send a message to the questionManager's mutable array to add the question to itself
            [questionManager.currentSessionQuestionsArray addObject:currentRoundQuestion];
            
            
            // create a session input handler
            InputHandler *currentInputHandler = [[InputHandler alloc]init];
            
            
            // ask user the question by telling the instance of AdditionQuestion to do it.
            [currentRoundQuestion askUserTheQuestion];
            

            // obtain the userAnswer as a String by telling our instance of the InputHandler to ask the user.
            NSString *userAnswerString = [currentInputHandler askUserForAnswer];
        
            
            //check if user input "quit"
            if ([userAnswerString isEqualToString: @"quit"]) {
                gameOn = NO;
                NSLog(@"You typed quit");
                continue;
            }
            
            
            // for clarity, create variables to use in the game success control flow
            NSInteger actualAnswer = currentRoundQuestion.answer; // remember that [currentRoundQuestion answer]; is the same as currentRoundQuestion.answer. Obj C properties are just getter and setter methods.
            NSInteger userAnswer = userAnswerString.intValue;
            
            
            // check how the userAnswer compares to actual answer
            if (userAnswer == actualAnswer) {
                NSLog(@"You're a part-time genius!");
                [scoreKeeper updateScore:YES];
                [questionManager printStatsUsingScoresFrom: scoreKeeper andThisRoundTimeFrom:currentRoundQuestion];
            } else {
                NSLog(@"Try again");
                [scoreKeeper updateScore:NO];
                [questionManager printStatsUsingScoresFrom: scoreKeeper andThisRoundTimeFrom:currentRoundQuestion];
            }
        }
    }
    return 0;
}
