//
//  SubtractionQuestion.m
//  Maths Part 2
//
//  Created by Colin on 2018-04-11.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import "SubtractionQuestion.h"

@implementation SubtractionQuestion

- (instancetype)init {
    if (self = [super init]) {
        [self generateQuestion];
    }
    return self;
}

-(void)generateQuestion
{
    super.question = [NSString stringWithFormat:@"%ld - %ld ?", super.leftValue, super.rightValue];
    super.answer = super.leftValue-super.rightValue;
}

@end
