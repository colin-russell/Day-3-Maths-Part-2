//
//  AdditionQuestion.m
//  Maths Part 2
//
//  Created by Colin on 2018-04-11.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import "Question.h"

@implementation Question

- (instancetype) init {
    if (self = [super init]) {
//        int a = arc4random_uniform(90)+10;
//        int b = arc4random_uniform(90)+10;
        
        _leftValue = arc4random_uniform(91)+11;
        _rightValue = arc4random_uniform(91)+11;
        
//        _question = [NSString stringWithFormat:@"%d + %d ?", a, b];
//        _answer = a+b;
        
        // set startTime to the current date
        _startTime = [NSDate date];
    }
    return self;
}
// overriding getter
- (NSInteger)answer
{
    _endTime = [NSDate date];
    return _answer;
}

-(NSTimeInterval)answerTime
{
    return [self.endTime timeIntervalSinceDate:self.startTime]; // probably need to ROUND somehow
}

-(void)generateQuestion
{
    
}

@end
