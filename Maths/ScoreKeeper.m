//
//  ScoreKeeper.m
//  Maths
//
//  Created by Nathan Hsu on 2018-02-13.
//  Copyright © 2018 Nathan Hsu. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

- (instancetype)init
{
    self = [super init];
    if (self) {
        _mistakes = 0;
        _corrects = 0;
    }
    return self;
}

- (void) updateScore: (BOOL) isCorrect  {
    if (isCorrect) {
        self.corrects += 1;
    } else {
        self.mistakes += 1;
    }
}

@end
