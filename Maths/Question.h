//
//  AdditionQuestion.h
//  Maths
//
//  Created by Nathan Hsu on 2018-02-13.
//  Copyright © 2018 Nathan Hsu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Question : NSObject

// responsible for generating question.
// responsible for handling answer to question
// Part 2. also responsible for handling time tracking

// right and left value. this is to accomodate this being a superclass of different types of math questions
@property int rightValue;
@property int leftValue;
// these will be set in the init override. Set to random values, subclasses will be able to access these



@property NSString *question;
@property (nonatomic) NSInteger answer;

// 2 properties for tracking time
@property NSDate *startTime;
@property NSDate *endTime;

// where should we set value to the startTime?? As soon as the program is launched? Soon as question is asked? Those two are the same times. So when the first questions is asked. -> AdditionQuestions's init override


// a method to find out diff between start time and end time.
-(NSTimeInterval) timeToAnswer;

-(void) askUserTheQuestion;

//we also need method to set the question and answer properties
-(void) generateQuestion;
//question class version of this will do nothing


















@end
