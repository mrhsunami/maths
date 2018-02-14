//
//  AdditionQuestion.m
//  Maths
//
//  Created by Nathan Hsu on 2018-02-13.
//  Copyright © 2018 Nathan Hsu. All rights reserved.
//

#import "AdditionQuestion.h"

@implementation AdditionQuestion

- (instancetype)init {
    if (self = [super init]) {

        // Generate two random numbers
        int mathValueOne = arc4random_uniform(90)+10;
        int mathValueTwo = arc4random_uniform(90)+10;
        _question = [NSString stringWithFormat:@"What is %i + %i?", mathValueOne, mathValueTwo];
    
        // Set the correct anser
        _answer = mathValueOne + mathValueTwo;
        
    }
    return self;
}




@end
