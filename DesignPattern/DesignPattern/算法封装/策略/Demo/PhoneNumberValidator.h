//
//  PhoneNumberValidator.h
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/23.
//

#import "InputValidator.h"

NS_ASSUME_NONNULL_BEGIN

@interface PhoneNumberValidator : InputValidator

- (BOOL)validateInput:(UITextField *)input;

@end

NS_ASSUME_NONNULL_END
