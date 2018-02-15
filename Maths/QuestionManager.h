//
//  QuestionManager.h
//  Maths
//
//  Created by Nathan Hsu on 2018-02-14.
//  Copyright © 2018 Nathan Hsu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "ScoreKeeper.h"

@interface QuestionManager : NSObject

@property (nonatomic) NSMutableArray *currentSessionQuestionsArray;

- (NSString *) timeStats;
//this should give something like this: "Total time: 60s, average time: 10s"
- (void) printStatsUsingScoresFrom: (ScoreKeeper *)scoreKeeper andThisRoundTimeFrom:(Question *)currentRoundQuestion;


@end
