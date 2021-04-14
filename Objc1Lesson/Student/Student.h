//
//  Student.h
//  Objc1Lesson
//
//  Created by Илья Кадыров on 14.04.2021.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject
@property (nonatomic, strong) NSString* name;
@property (nonatomic, strong) NSString* surname;
@property (nonatomic, strong) NSString* fullName;
@property (nonatomic, readonly) NSInteger age;

-(instancetype)init;
-(void)setFullName:(NSString *)name:(NSString *)surname;
-(void)setSurname:(NSString *)surname;
-(void)setName:(NSString *)name;
-(void)changeAge;

-(NSInteger)age;
-(NSString*)name;
-(NSString*)surname;

@end

NS_ASSUME_NONNULL_END
