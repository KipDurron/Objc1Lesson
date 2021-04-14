//
//  ViewController.m
//  Objc1Lesson
//
//  Created by Илья Кадыров on 22.03.2021.
//

#import "ViewController.h"
#import "CheckChar.h"
#import "EnumCalc.h"
#import "Human.h"
#import "Student.h"
#import "СorresponStudent.h"


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString* testChar = @"A";
    NSLog(@"%@", (existInAlphabet(testChar) ? @"YES" : @"NO"));
    NSInteger first = 1;
    NSInteger second = 2;
    
    NSInteger resPlus = [self plus: first: second];
    NSInteger resMinus = [self minus: first: second];
    NSInteger resMult = [self mult: first: second];
    NSInteger resDivWithout = [self divWithout: first: second];
    NSInteger resDivRemainder = [self divRemainder: first: second];
    NSLog(@"resPlus: %i, resMinus: %i, resMult: %i, resDivWithout: %i, resDivRemainder: %i",
          resPlus, resMinus, resMult, resDivWithout, resDivRemainder);
    [self showArrayStr];
    
    [self anyOperation:first :second :Plus];
    
    Human human = {@"Ivan", 40, Man};
    [self showHuman: human];
    Human human2 = {@"Sasha", 15, Female};
    [self showHuman: human2];
    [self testStudent];
}

- (void) showHuman: (Human) human {
    NSLog(@"Human: \n name: %@, \n age: %li, \n gender: %@",
          human.name, (long)human.age, [self genderToString:human.gender]);
}


- (NSString*)genderToString:(Gender) gender{
    NSString *result = nil;
    switch(gender) {
        case Man:
            result = @"man";
            break;
        case Female:
            result = @"femal";
            break;
        default:
            result = @"not exist";
    }
    return result;
}

- (void) anyOperation: (NSInteger) first: (NSInteger) second: (Operation) operation{
    
    NSInteger result;
    switch (operation) {
        case Plus:
            result = [self plus:first :second];
            break;
        case Minus:
            result = [self minus:first :second];
            break;
        case Mult:
            result = [self mult:first :second];
            break;
        case DivWithout:
            result = [self divWithout:first :second];
            break;
        case DivRemainder:
            result = [self divRemainder:first :second];
            break;
    }
    NSLog(@"%li", (long)result);
}

- (void) showArrayStr {
    NSMutableArray *arrayStr = [NSMutableArray arrayWithObjects:@"London", @"Moskow", @"New York", @"Stambul", nil];
    for (NSString* currentStr in arrayStr) {
        NSLog(currentStr);
    }
    NSInteger count = 0;
    while(count < [arrayStr count]) {
        NSLog(arrayStr[count]);
        count++;
    }
    count = 0;
    do {
        NSLog(arrayStr[count]);
        count++;
    } while(count < [arrayStr count]);
}

- (NSInteger) plus: (NSInteger) first: (NSInteger) second {
    return first + second;
}

- (NSInteger) minus:(NSInteger) first: (NSInteger) second {
    return first - second;
}

- (NSInteger) mult:(NSInteger) first: (NSInteger) second {
    return first * second;
}

- (NSInteger) divWithout:(NSInteger) first: (NSInteger) second {
    return first / second;
}

- (NSInteger) divRemainder:(NSInteger) first: (NSInteger) second {
    return first % second;
}
-(void)testStudent{
    Student* std = [[Student alloc] init];
    CorresponStudent* corStd = [[CorresponStudent alloc] init];
    [std changeAge];
    std.name = @"Ivan";
    std.surname = @"Ivanov";
    corStd.name = @"Sergay";
    corStd.surname = @"Sergeev";
    NSMutableArray *arrayStudent = [NSMutableArray arrayWithObjects:std, corStd, nil];
    for (Student* student in arrayStudent) {
        NSLog(@"%@", [student description]);
    }
    
    
}

@end
