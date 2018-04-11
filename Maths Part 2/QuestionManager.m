//
//  QuestionManager.m
//  Maths Part 2
//
//  Created by Colin on 2018-04-11.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import "QuestionManager.h"
#import "Question.h"

@implementation QuestionManager

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questions = [[NSMutableArray alloc] init];
    }
    return self;
}

-(NSString*)timeOutput
{
    NSInteger totalTime = 0;
    
    for (Question *eachRound in self.questions) {
        totalTime+=eachRound.answerTime;
    }
    NSInteger averageTime = totalTime/self.questions.count;
    
    return [NSString stringWithFormat: @"total time: %lds, average time:%lds", totalTime, averageTime];
}

@end
