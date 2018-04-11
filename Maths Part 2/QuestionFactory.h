//
//  QuestionFactory.h
//  Maths Part 2
//
//  Created by Colin on 2018-04-11.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"

@interface QuestionFactory : NSObject

@property NSArray *questionSubclassNames;

-(Question*)generateRandomQuestion;

@end
