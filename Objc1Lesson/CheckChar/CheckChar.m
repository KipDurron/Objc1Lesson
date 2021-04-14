//
//  CheckChar.m
//  Objc1Lesson
//
//  Created by Илья Кадыров on 24.03.2021.
//

#import <Foundation/Foundation.h>



BOOL existInAlphabet(NSString* currentChar) {
    currentChar = [currentChar lowercaseString];
    const NSString* englishAlphabet = @"qwertyuiopasdfghjklzxcvbnm";
    return [englishAlphabet containsString:currentChar];
}
