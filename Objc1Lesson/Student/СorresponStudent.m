//
//  СorresponStudent.m
//  Objc1Lesson
//
//  Created by Илья Кадыров on 14.04.2021.
//

#import "СorresponStudent.h"

@implementation CorresponStudent

@synthesize freeTime = _freeTime;
- (instancetype)init
{
    self = [super init];
    if (self) {
        _freeTime = YES;
    }
    return self;
}

-(void)setFreeTime:(BOOL)freeTime{
    _freeTime = freeTime;
}

-(BOOL)freeTime{
    return _freeTime;
}

- (NSString *)description
{
    NSString* parentDesc = [super description];
//    NSString* currentDesc = [NSString stringWithFormat:@"freeTime: %@ :%@", self.freeTime, parentDesc];
    return [NSString stringWithFormat:@"freeTime: %@ %@", self.freeTime ? @"YES" : @"NO", parentDesc];
}

@end
