//
//  TextFieldColleague.m
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/12.
//

#import "TextFieldColleague.h"

@implementation TextFieldColleague

- (void)changeTextFieldValue {
    if (self.delegate && [self.delegate respondsToSelector:@selector(colleagueEvent:)]) {
        [self.delegate colleagueEvent:self];
    }
}

@end
