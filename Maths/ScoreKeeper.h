//
//  ScoreKeeper.h
//  Maths
//
//  Created by Nathan Hsu on 2018-02-13.
//  Copyright © 2018 Nathan Hsu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ScoreKeeper : NSObject

@property int corrects;
@property int mistakes;
- (void) updateScore: (BOOL) isCorrect;

@end
