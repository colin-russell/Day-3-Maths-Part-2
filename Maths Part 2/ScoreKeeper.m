//
//  ScoreKeeper.m
//  Maths Part 2
//
//  Created by Colin on 2018-04-11.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import "ScoreKeeper.h"

@implementation ScoreKeeper

-(NSString*)getScore {
    float total = _wrong + _right;
    float score = (_right / total) * 100;
    return [NSString stringWithFormat:@"Score: %d right, %d wrong ----- %f %%", _right, _wrong, score];
}

@end

