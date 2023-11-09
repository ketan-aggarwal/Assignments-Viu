

#import <Foundation/Foundation.h>

@interface XYZPerson : NSObject

@property NSString  *firstName;
@property NSString *lastName;
@property NSDate *dateofBirth;

@property NSInteger *a;


-(void)sayHello;
-(void)saySomething:(NSString *)greeting;
- (void)sayGoodMorning;
-(void)sayGoodAfterNoon;



@end



