//
//  EmailInputValidator.h
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/23.
//

#import "InputValidator.h"

NS_ASSUME_NONNULL_BEGIN

/// 具体的策略--邮箱策略
@interface EmailInputValidator : InputValidator

// 重写父类的方法
- (BOOL)validateInput:(UITextField *)input;

@end

NS_ASSUME_NONNULL_END
