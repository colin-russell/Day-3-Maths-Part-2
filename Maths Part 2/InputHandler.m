//
//  InputHandler.m
//  Maths Part 2
//
//  Created by Colin on 2018-04-11.
//  Copyright © 2018 Colin Russell. All rights reserved.
//

#import "InputHandler.h"

@implementation InputHandler
+(NSString*) getInput {
    char inputChars[255];
    fgets(inputChars, 255, stdin);
    NSString *result = [NSString stringWithCString:inputChars
                                          encoding:NSUTF8StringEncoding];
    return [result stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
}

@end
