//
//  main.m
//  LearningObjC
//
//  Created by Ketan Aggarwal on 08/11/23.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import <Foundation/Foundation.h>
#import "XYZPerson.h"
#import "XYZShoutingPerson.h"

int main(int argc, char * argv[]) {
    NSString * appDelegateClassName;
    @autoreleasepool {
       
        XYZPerson *person = [[XYZPerson alloc] init];
        person.firstName = @"Ketan";
        person.lastName = @"Aggarwal";
        person.dateofBirth = [NSDate date];
        
        
        
        [person sayHello];
        [person sayGoodMorning];
        [person sayGoodAfterNoon];
        
        if (person.a == nil){
            NSLog(@"null value");
        }
        
        
        XYZShoutingPerson *shoutingPerson = [[XYZShoutingPerson alloc] init];
        shoutingPerson.firstName = @"Alice";
        shoutingPerson.lastName = @"Smith";
        shoutingPerson.dateofBirth = [NSDate date];

        [shoutingPerson saySomething:@"Hello, world!"];
        appDelegateClassName = NSStringFromClass([AppDelegate class]);
        
        
    }
    return UIApplicationMain(argc, argv, nil, appDelegateClassName);
}
