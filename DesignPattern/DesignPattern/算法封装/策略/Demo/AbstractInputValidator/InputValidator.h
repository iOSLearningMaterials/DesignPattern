//
//  InputValidator.h
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/23.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface InputValidator : NSObject

/// 抽象策略 验证是否通过
/// @param input 当前输入textField

- (BOOL)validateInput:(UITextField *)input;

/// 验证不通过时的错误信息
@property (nonatomic, copy, nullable) NSString *errorMessage;


@end

NS_ASSUME_NONNULL_END
