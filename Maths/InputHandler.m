//
//  InputHandler.m
//  Maths
//
//  Created by Nathan Hsu on 2018-02-13.
//  Copyright © 2018 Nathan Hsu. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler

-(NSString *) askUserForAnswer {
    //     get user answer
    char userInput[255];
    NSLog(@"Please enter your answer");
    // user types here.
    fgets(userInput, 255, stdin);
    
    // clean up answer
    NSCharacterSet *inputCharacterSet = [NSCharacterSet whitespaceAndNewlineCharacterSet];
    // turns it into string
    NSString *userInputAsString = [NSString stringWithCString:userInput encoding:NSUTF8StringEncoding];
    // trims the string
    NSString *userInputAsTrimmedString = [userInputAsString stringByTrimmingCharactersInSet:inputCharacterSet];
    NSLog(@"%@", userInputAsTrimmedString);
    return userInputAsTrimmedString;
    
}

@end
