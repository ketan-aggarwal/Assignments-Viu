//
//  XYZPerson.m
//  LearningObjC
//
//  Created by Ketan Aggarwal on 08/11/23.
//

#import <Foundation/Foundation.h>
#import "XYZPerson.h"

@implementation XYZPerson

-(void)saySomething:(NSString *)greeting {
    NSLog(@"%@",greeting);
}

-(void)sayHello {
    NSString *helloMessage = [NSString stringWithFormat:@"Hello, my name is %@ %@, and I was born on %@.", self.firstName, self.lastName, self.dateofBirth];
    [self saySomething:helloMessage];
}

-(void)sayGoodMorning {
    [self saySomething:@"Good Morning!"];
}

-(void)sayGoodAfterNoon {
    [self saySomething:@"Good AfterNoon!"];
}

@end
