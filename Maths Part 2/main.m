//
//  main.m
//  Maths Part 2
//
//  Created by Colin on 2018-04-11.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Question.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"
#import "QuestionFactory.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        NSLog(@"Maths Game");
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc]init];
        QuestionManager *qManager = [[QuestionManager alloc] init];
        QuestionFactory *qFactory = [[QuestionFactory alloc] init];
        
        while (gameOn == YES) {
            Question *question = [qFactory generateRandomQuestion];

            [qManager.questions addObject:question]; // add each new question to the questions array in QuestionManager
            
            NSLog(@"%@", question.question);
            NSString *result = [InputHandler getInput];
            NSLog(@"My result is %@", result);
            
            if ([result isEqualToString:@"quit"]) {
                gameOn = NO;
            }
            else if (result.intValue == question.answer) {
                NSLog(@"Right!");
                scoreKeeper.right++;
            }
            else {
                NSLog(@"Wrong!");
                scoreKeeper.wrong++;
            }
            NSLog(@"%@", [scoreKeeper getScore]);
            NSLog(@"%@", [qManager timeOutput]);
        }
        
    }
    
    
    
    return 0;
}
