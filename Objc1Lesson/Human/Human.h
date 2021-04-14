//
//  Human.h
//  Objc1Lesson
//
//  Created by Илья Кадыров on 08.04.2021.
//

#ifndef Human_h
#define Human_h

enum Gender {
    Man,
    Female
};
typedef enum Gender Gender;

struct Human {
    NSString *name;
    NSInteger age;
    Gender gender;
    
};
typedef struct Human Human;

#endif /* Human_h */
