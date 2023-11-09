//
//  XYZShoutingPerson.m
//  LearningObjC
//
//  Created by Ketan Aggarwal on 08/11/23.
//

#import <Foundation/Foundation.h>
#import "XYZShoutingPerson.h"



@implementation XYZShoutingPerson

- (void)saySomething:(NSString *)greeting {
    NSString *uppercaseGreeting = [greeting uppercaseString];
    [super saySomething:uppercaseGreeting];
}

@end
