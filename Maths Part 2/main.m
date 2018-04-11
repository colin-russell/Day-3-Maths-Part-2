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

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        BOOL gameOn = YES;
        ScoreKeeper * sk = [[ScoreKeeper alloc]init];
        
        while (gameOn == YES) {
            AdditionQuestion *questionmark = [[AdditionQuestion alloc] init];
            NSLog(@"%@", questionmark.question);
            NSString *result = [InputHandler getInput];
            NSLog(@"My result is %@",result);
            
            if ([result isEqualToString:@"quit"]) {
                gameOn = NO;
            }
            else if (result.intValue == questionmark.answer) {
                NSLog(@"Right!");
                sk.right++;
            }
            else {
                NSLog(@"Wrong!");
                sk.wrong++;
            }
            NSLog(@"%@", [sk getScore]);
        }
        
    }
    
    
    
    return 0;
}
