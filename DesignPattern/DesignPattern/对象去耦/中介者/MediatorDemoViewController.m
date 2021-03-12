//
//  MediatorDemoViewController.m
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/12.
//

#import "MediatorDemoViewController.h"
#import "TextFieldMediator.h"
#import "TextFieldColleague.h"

@interface MediatorDemoViewController ()

@property (weak, nonatomic) IBOutlet UITextField *textField1;
@property (weak, nonatomic) IBOutlet UITextField *textField2;
@property (weak, nonatomic) IBOutlet UITextField *textField3;

@property (nonatomic, strong) TextFieldMediator *mediator;
@property (nonatomic, strong) TextFieldColleague *colleague;

@end

@implementation MediatorDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"中介者模式";
    
    // 初始化中介者
    self.mediator = [[TextFieldMediator alloc] init];
    self.mediator.textField_1 = self.textField1;
    self.mediator.textField_2 = self.textField2;
    self.mediator.textField_3 = self.textField3;
    
    // 将代理设置成中介者
    self.textField1.delegate = self.mediator;
    self.textField2.delegate = self.mediator;
    self.textField3.delegate = self.mediator;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
