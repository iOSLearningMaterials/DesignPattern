//
//  CustomTextField.m
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/22.
//

#import "CustomTextField.h"

@implementation CustomTextField

//- (instancetype)initWithFrame:(CGRect)frame withInputValidator:(InputValidator *)inputValidator {
//    if (self = [super initWithFrame:frame]) {
//
//        [self setup];
//
//        // 持有inputValidator
//        self.inputValidator = inputValidator;
//    }
//
//    return self;
//}

- (BOOL)validate {
    return [self.inputValidator validateInput:self];
}

@end
