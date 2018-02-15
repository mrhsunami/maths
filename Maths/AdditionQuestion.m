//
//  AdditionQuestion.m
//  Maths
//
//  Created by Nathan Hsu on 2018-02-13.
//  Copyright © 2018 Nathan Hsu. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

// here is the class's init override.
- (instancetype)init {
    if (self = [super init]) {

        // Generate two random numbers
        int mathValueOne = arc4random_uniform(90)+10;
        int mathValueTwo = arc4random_uniform(90)+10;
        _question = [NSString stringWithFormat:@"What is %i + %i?", mathValueOne, mathValueTwo];
    
        // Set the startTime property of self declared in .h - type is NSDate. Use [NSDate date] convenience init for current date. I think this returns it in number of seconds...i think.
        self.startTime = [NSDate date];
//        _startTime = [NSDate date]; // this is the same as calling self.startTime. More commonly used. And more swift like.
        
        // where do we set the endTime property? Should be...when the user enters the question and hit returns. So as soon as fget takes in the value? Something about Dependency Injection passing in dummy date value to test method...what method??
        
        
        // Set the correct anser
        self.answer = mathValueOne + mathValueTwo;
        
    }
    return self;
}

// overriding getter
- (NSInteger)answer {
    self.endTime = [NSDate date];
    return _answer;
}

-(NSTimeInterval) answerTime {
    // calculate difference between startTime and endTime using NSDate method timeIntervalSinceDate:
//    NSTimeInterval *timeInterval = [[self.startTime] timeIntervalSinceDate:[self.endTime];
//    NSDate *startTime = self.startTime;
//    NSDate *endTime = self.endTime;
    NSTimeInterval timeInterval = [self.endTime timeIntervalSinceDate:self.startTime];
    return timeInterval;
}

-(void)askUserTheQuestion {
    NSLog(@"%@", self.question);
}


@end
