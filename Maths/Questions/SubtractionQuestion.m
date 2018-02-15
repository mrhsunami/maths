//
//  SubtractionQuestion.m
//  Maths
//
//  Created by Nathan Hsu on 2018-02-14.
//  Copyright © 2018 Nathan Hsu. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

-(instancetype)init {
    self = [super init];
    if (self) {
        [self generateQuestion];
    }
    return self;
}

-(void) generateQuestion {
    super.question = [NSString stringWithFormat:@"What is %i - %i?", super.leftValue, super.rightValue];
    super.answer = super.leftValue - super.rightValue;
}

@end
