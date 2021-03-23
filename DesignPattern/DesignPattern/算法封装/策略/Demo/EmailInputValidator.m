//
//  EmailInputValidator.m
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/23.
//

#import "EmailInputValidator.h"

@implementation EmailInputValidator

- (BOOL)validateInput:(UITextField *)input {
    if (input.text.length == 0) {
        self.errorMessage = @"输入为空";
    } else {
        BOOL isMatch = [input.text containsString:@"@"] && [input.text hasSuffix:@".com"];
        if (isMatch == NO) {
            self.errorMessage = @"请输入正确的邮箱";
        } else {
            self.errorMessage = nil;
        }
    }
    return self.errorMessage.length <= 0;
}

@end
