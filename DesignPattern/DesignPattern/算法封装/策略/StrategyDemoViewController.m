//
//  StrategyDemoViewController.m
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/16.
//

#import "StrategyDemoViewController.h"
#import "EtypeValueA.h"
#import "CustomTextField.h"
#import "UIInfomationView.h"
#import "EmailInputValidator.h"
#import "PhoneNumberValidator.h"


typedef NS_ENUM(NSUInteger, ETypeValue) {
    ETypeValueA,
    ETypeValueB,
    ETypeValueC,
    ETypeValueD,
    ETypeValueE,
};

@interface StrategyDemoViewController () <UITextFieldDelegate>

@property (nonatomic, strong) CustomTextField  *emailField;
@property (nonatomic, strong) CustomTextField  *phoneNumberField;
@property (nonatomic, strong) UIButton     *button;

@end

@implementation StrategyDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    [self bussiness];
    
    [self strategyEtypeValue];
        
    [self initCustomFields];
    [self initButton];
}

- (void)bussiness {
    // 输入条件
    ETypeValue type = ETypeValueA;
    
    // 输出值
    NSString *input = nil;
    
    if (type == ETypeValueA) {
        // 复杂的业务
        // TODO
        if (1) {
            // TODO
        } else if (0) {
            // TODO
        }
    } else if (type == ETypeValueB) {
        // TODO
    } else if (type == ETypeValueC) {
        // TODO
    } else if (type == ETypeValueD) {
        // TODO
    } else if (type == ETypeValueE) {
        // TODO
    }
}

- (void)strategyEtypeValue {
    NSString *str = [EtypeValueA showString];
}


#pragma mark - 初始化文本输入框
- (void)initCustomFields {

    self.emailField          = [[CustomTextField alloc] initWithFrame:CGRectMake(30, 220,  300, 30)];
    self.emailField.backgroundColor = [UIColor grayColor];
    self.emailField.delegate = self;
    
    // 使用策略
    self.emailField.inputValidator = [[EmailInputValidator alloc] init];
    
    [self.view addSubview:self.emailField];
    
    
    self.phoneNumberField          = [[CustomTextField alloc] initWithFrame:CGRectMake(30, 220 + 50,  300, 30)];
    self.phoneNumberField.delegate = self;
    self.phoneNumberField.backgroundColor = [UIColor grayColor];
    self.phoneNumberField.inputValidator = [[PhoneNumberValidator alloc] init];
    
    [self.view addSubview:self.phoneNumberField];
}

#pragma mark - 初始化按钮以及按钮事件
- (void)initButton {

    self.button = [[UIButton alloc] initWithFrame:CGRectMake(30, 150, 200, 40)];
    [self.button setTitle:@"back" forState:UIControlStateNormal];
    [self.button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [self.button setBackgroundColor:[UIColor blueColor]];

    [self.button addTarget:self action:@selector(buttonsEvent:)  forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.button];
}

- (void)buttonsEvent:(UIButton *)button {

    [self.view endEditing:YES];
}

#pragma mark - 文本框代理
- (void)textFieldDidEndEditing:(UITextField *)textField {
    CustomTextField *customField = (CustomTextField *)textField;
    
    
//    [self normalWithTextField:customField];
    
    // 使用策略模式
    if (![customField validate]) {
        UIAlertController *alert = [UIInfomationView showAlertViewWithTitle:@"" message:customField.inputValidator.errorMessage cancelButtonTitle:@"确定" otherButtonTitles:nil clickAtIndex:^(NSInteger buttonIndex) { }];
        [self presentViewController:alert animated:YES completion:nil];
    }
}



- (void)normalWithTextField:(CustomTextField *)customField {
    if (customField == self.emailField) {
        NSString *outPut = [self validateEmailInput:self.emailField];
        if (outPut) {
            UIAlertController *alert = [UIInfomationView showAlertViewWithTitle:@"Email" message:outPut cancelButtonTitle:@"确定" otherButtonTitles:nil clickAtIndex:^(NSInteger buttonIndex) {
                
            }];
            
            [self presentViewController:alert animated:YES completion:nil];
            
        } else {
            NSLog(@"输入邮箱正确");
        }
    } else {
        NSString *outPut = [self validatePhoneInput:self.phoneNumberField];
        if (outPut) {
            UIAlertController *alert = [UIInfomationView showAlertViewWithTitle:@"电话" message:outPut cancelButtonTitle:@"确定" otherButtonTitles:nil clickAtIndex:^(NSInteger buttonIndex) {
                
            }];
            
            [self presentViewController:alert animated:YES completion:nil];
        } else {
            NSLog(@"输入电话正确");
        }
    }
}

- (NSString *)validateEmailInput:(UITextField *)input {
    NSString *outStr = nil;
    if (input.text.length == 0) {
        outStr = @"输入为空";
    } else {
        BOOL isMatch = [input.text containsString:@"@"] && [input.text hasSuffix:@".com"];
        if (isMatch == NO) {
            outStr = @"请输入正确的邮箱";
        } else {
            outStr= nil;
        }
    }
    return outStr;
}

- (NSString *)validatePhoneInput:(UITextField *)input {
    NSString *outStr = nil;
    if (input.text.length == 0) {
        outStr = @"输入为空";
    } else {
        BOOL isMatch = input.text.length == 11;
        if (isMatch == NO) {
            outStr = @"请输入正确的电话";
        } else {
            outStr= nil;
        }
    }
    return outStr;
}
@end
