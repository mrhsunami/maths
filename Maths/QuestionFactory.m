//
//  QuestionFactory.m
//  Maths
//
//  Created by Nathan Hsu on 2018-02-14.
//  Copyright © 2018 Nathan Hsu. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"DivisionQuestion", @"MultiplicationQuestion"];
    }
    return self;
}


-(Question *) generateRandomQuestion {
    NSInteger indexForArrayOfQuestionTypes = arc4random_uniform(3);
    NSString *className = self.questionSubclassNames[indexForArrayOfQuestionTypes];
    Question *questionType = [[NSClassFromString(className) alloc] init];
    return questionType;
}

@end
