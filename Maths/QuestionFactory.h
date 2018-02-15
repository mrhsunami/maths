//
//  QuestionFactory.h
//  Maths
//
//  Created by Nathan Hsu on 2018-02-14.
//  Copyright © 2018 Nathan Hsu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"


@interface QuestionFactory : NSObject

@property NSArray *questionSubclassNames;

-(Question *) generateRandomQuestion;


@end
