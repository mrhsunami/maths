//
//  main.m
//  Maths
//
//  Created by Nathan Hsu on 2018-02-13.
//  Copyright © 2018 Nathan Hsu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        while(true) {
            
            AdditionQuestion *currentQuestion = [[AdditionQuestion alloc]init];
            NSLog(@"%@", currentQuestion.question);
            

            
            // get user answer
            char userInput[255];
            NSLog(@"Please enter your answer");
            fgets(userInput, 255, stdin);
//
//            // clean up answer
            NSCharacterSet *inputCharacterSet = [NSCharacterSet whitespaceCharacterSet];
            NSString *userInputConverted = [NSString stringWithCString:userInput encoding:NSUTF8StringEncoding];
            NSString *userInputTrimmed = [userInputConverted stringByTrimmingCharactersInSet:inputCharacterSet];
            // convert user input from NSString to NSInteger
            
            
            //check if user input "quit"
            if ([userInputTrimmed isEqualToString: @"quit"]) {
                gameOn = NO;
            }
            
            if (!gameOn) {
                break;
            }
        
            // check user answer against correct answer
            NSInteger userAnswer = userInputTrimmed.intValue;
            
            if (currentQuestion.answer == userAnswer) {
                NSLog(@"You sexy genius!");
            } else {
                NSLog(@"Try again");
            }
            
        
            
           
            
        }
        
    }
    return 0;
}
