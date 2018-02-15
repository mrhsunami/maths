//
//  AdditionQuestion.h
//  Maths
//
//  Created by Nathan Hsu on 2018-02-13.
//  Copyright © 2018 Nathan Hsu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AdditionQuestion : NSObject

// responsible for generating question.
// responsible for handling answer to question
// Part 2. also responsible for handling time tracking

@property NSString *question;
@property (nonatomic) NSInteger answer;

// 2 properties for tracking time
@property NSDate *startTime;
@property NSDate *endTime;

// where should we set value to the startTime?? As soon as the program is launched? Soon as question is asked? Those two are the same times. So when the first questions is asked. -> AdditionQuestions's init override


// a method to find out diff between start time and end time.
-(NSTimeInterval) answerTime;

-(void) askUserTheQuestion;


@end
