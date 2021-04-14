//
//  Student.m
//  Objc1Lesson
//
//  Created by Илья Кадыров on 14.04.2021.
//

#import "Student.h"

@implementation Student

@synthesize age = _age;
@synthesize name = _name;
@synthesize surname = _surname;
@synthesize fullName = _fullName;

- (instancetype)init
{
    self = [super init];
    if (self) {
        _age = 18;
        self.name = @"Name";
        self.surname = @"Surname";
        [self setFullName:self.name:self.surname];
        
    }
    return self;
}

-(void)setFullName:(NSString *)name:(NSString *)surname {
    if(name  && surname ){
        _fullName = [NSString stringWithFormat:@"%@ %@",name, surname];
    }
    
}
-(void)setName:(NSString *)name{
    _name = name;
    [self setFullName:self.name: self.surname];
}
-(void)setSurname:(NSString *)surname{
    _surname = surname;
    [self setFullName:self.name: self.surname];
}
-(void)changeAge{
    _age += 1;
}


-(NSString*)name{
    return _name;
}
-(NSString*)surname{
    return _surname;
}
-(NSInteger)age{
    return _age;
}
-(NSString*)fullName{
    return _fullName;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"age: %i, name: %@, surname: %@", self.age, self.name, self.surname];
}

@end
