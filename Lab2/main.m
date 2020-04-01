//
//  main.m
//  Lab2
//
//  Created by WendaLi on 2020-03-31.
//  Copyright © 2020 WendaLi. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DateCalculator.h"
#import "Box.h"

int main(int argc, const char * argv[]) {
  @autoreleasepool {
    // Default initializer
    // - DateCalculator *calc1 = [DateCalculator new];
    DateCalculator *calc = [[DateCalculator alloc] init];
    //[DateCalculator sayHelloWith:@"How are you" andName:@"Derrick"];
    //[calc setMyAge: 30.2];
    //NSLog(@"%.1f", [calc myAge]);
    calc.myAge = 30.2;
    NSLog(@"%.1f", calc.myAge);
    //    [DateCalculator sayHelloWith:@"How are you?" andName:@"Derrick"];
    
    DateCalculator *calc2 = [[DateCalculator alloc] initWithMyAge:60 andName:@"Robert"];
    if ([calc2 canDatePersonWithAge:20]) {
      NSLog(@"Yes");
    } else {
      NSLog(@"No");
    }
    
    // Note: Senging a message to nil does not crash!
    // In Java lingo => "Calling a methodon a null object does not throw a NullPointerException!"
    DateCalculator *calc3 = nil;
    NSLog(@"%d", [calc3 canDatePersonWithAge:30]);
    NSString *str = nil;
    NSLog(@"%@", [str uppercaseString]);

      Box *box1 = [[Box alloc] initWithHeight:1 andWidth:2 andLength:3];
      NSLog(@"%f", box1.calculateTheVolume);
      
      Box *box2 = [[Box alloc] initWithHeight:2 andWidth:3 andLength:4];
      NSLog(@"%f", [box2 howManyTimesOneBoxWillFitInsideTheOther:box1]);
  }
  return 0;
}
