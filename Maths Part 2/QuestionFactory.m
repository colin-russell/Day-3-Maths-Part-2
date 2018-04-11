//
//  QuestionFactory.m
//  Maths Part 2
//
//  Created by Colin on 2018-04-11.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import "QuestionFactory.h"

@implementation QuestionFactory

- (instancetype)init
{
    self = [super init];
    if (self) {
        _questionSubclassNames = @[@"AdditionQuestion", @"SubtractionQuestion", @"DivisionQuestion", @"MultiplicationQuestion"];
    }
    return self;
}

-(Question*)generateRandomQuestion
{
    
    NSInteger randomIndex =  arc4random_uniform(3);
    return [[NSClassFromString([self.questionSubclassNames objectAtIndex:randomIndex]) alloc]init];
}

@end
