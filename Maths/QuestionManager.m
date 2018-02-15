//
//  QuestionManager.m
//  Maths
//
//  Created by Nathan Hsu on 2018-02-14.
//  Copyright © 2018 Nathan Hsu. All rights reserved.
//

#import "QuestionManager.h"

@implementation QuestionManager

-(instancetype)init {
    if (self = [super init]) {
        self.currentSessionQuestionsArray = [[NSMutableArray alloc] init];
//        self.questions = [NSMutableArray new];
    }
    return self;
}

- (NSString *) timeStats {
    //this should give something like this: "Total time: 60s, average time: 10s"
    // to get total time, reach into the QuestionManager array currentsessionQuessionsArray and loop through all the AdditionQuestion instances and get their timeinterval and add it to a variable outside this for-loop. Now we have total time
    // to get average time, total time, divid it by the number of instances of AdditionQuestion in curreent session Array
    
    double totalTime = 0;
    for ( AdditionQuestion *question in self.currentSessionQuestionsArray) {
        totalTime += [question answerTime];
    }
    double amountOfQuestionsSoFar = (double)self.currentSessionQuestionsArray.count;
    
    double averageTime = totalTime / amountOfQuestionsSoFar;
    
    
    NSString *timeOutput = [NSString stringWithFormat:@"Total Time: %.1fs. Average Time: %.1fs.", totalTime, averageTime];
    return timeOutput;
}

- (void) printStatsUsingScoresFrom: (ScoreKeeper *)scoreKeeper andThisRoundTimeFrom:(AdditionQuestion *)currentRoundQuestion {
    NSLog(@"Current score: Corrects: %i Mistakes: %i", scoreKeeper.corrects, scoreKeeper.mistakes);
    
    //                double answerTime = [currentRoundQuestion answerTime];
    NSLog(@"You took %.1f seconds.", [currentRoundQuestion answerTime]);
    
    //                NSString *otherTimeStats = [questionManager timeStats];
    NSLog(@"%@", [self timeStats]);
}

@end
