//
//  main.m
//  Maths Part 2
//
//  Created by Colin on 2018-04-11.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdditionQuestion.h"
#import "InputHandler.h"
#import "ScoreKeeper.h"
#import "QuestionManager.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        ScoreKeeper *scoreKeeper = [[ScoreKeeper alloc]init];
        QuestionManager *qM = [[QuestionManager alloc] init];
        
        while (gameOn == YES) {
            AdditionQuestion *aQ = [[AdditionQuestion alloc] init];
            [qM.questions addObject:aQ]; // add each new question to the questions array in QuestionManager
            
            NSLog(@"%@", aQ.question);
            NSString *result = [InputHandler getInput];
            NSLog(@"My result is %@",result);
            
            if ([result isEqualToString:@"quit"]) {
                gameOn = NO;
            }
            else if (result.intValue == aQ.answer) {
                NSLog(@"Right!");
                scoreKeeper.right++;
            }
            else {
                NSLog(@"Wrong!");
                scoreKeeper.wrong++;
            }
            NSLog(@"%@", [scoreKeeper getScore]);
            NSLog(@"%@", [qM timeOutput]);
        }
        
    }
    
    
    
    return 0;
}
