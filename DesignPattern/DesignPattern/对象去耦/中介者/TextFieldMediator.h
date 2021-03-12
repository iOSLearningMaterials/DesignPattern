//
//  TextFieldMediator.h
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/12.
//

#import "AbstractMediator.h"
#import <UIKit/UIKit.h>


NS_ASSUME_NONNULL_BEGIN

@interface TextFieldMediator : AbstractMediator <UITextFieldDelegate>

@property (nonatomic, weak) UITextField  *textField_1;
@property (nonatomic, weak) UITextField  *textField_2;
@property (nonatomic, weak) UITextField  *textField_3;

@end

NS_ASSUME_NONNULL_END
