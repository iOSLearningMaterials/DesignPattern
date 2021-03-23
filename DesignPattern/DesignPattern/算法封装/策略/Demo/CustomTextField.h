//
//  CustomTextField.h
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/22.
//

#import <UIKit/UIKit.h>
#import "InputValidator.h"

NS_ASSUME_NONNULL_BEGIN

@interface CustomTextField : UITextField

/// 抽象策略
@property (nonatomic, strong) InputValidator  *inputValidator;

/// 验证是否合法
- (BOOL)validate;

@end

NS_ASSUME_NONNULL_END
