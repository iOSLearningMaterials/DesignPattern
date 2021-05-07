//
//  CommandViewController.m
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/23.
//

#import "CommandViewController.h"
#import "Receiver.h"
#import "LightCommand.h"
#import "DarkCommand.h"
#import "Invoker.h"


#define kButtonTag1 1
#define kButtonTag2 2
#define kButtonTag3 3


@interface CommandViewController ()
/// 持有接收器
@property (nonatomic, strong) Receiver *reciver;

@end

@implementation CommandViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self initButtons];
    
    // 接收器
    self.reciver = [[Receiver alloc] init];
    self.reciver.colorView = self.view;
    
    //
}


#pragma mark -

- (void)initButtons {
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.tag = kButtonTag1;
    button.layer.borderWidth = 1.5;
    button.layer.borderColor = [UIColor redColor].CGColor;
    [button setTitle:@"+" forState:UIControlStateNormal];
    [button setTitleColor:[UIColor redColor] forState:UIControlStateNormal];

    
    [button addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button];
    
    UIButton *button2 = [UIButton buttonWithType:UIButtonTypeCustom];
    button2.tag = kButtonTag2;
    button2.layer.borderWidth = 1.5;
    button2.layer.borderColor = [UIColor redColor].CGColor;
    [button2 setTitle:@"-" forState:UIControlStateNormal];
    [button2 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];

    [button2 addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:button2];
    
    UIButton *button3 = [UIButton buttonWithType:UIButtonTypeCustom];
    button3.tag = kButtonTag3;
    button3.layer.borderWidth = 1.5;
    button3.layer.borderColor = [UIColor redColor].CGColor;
    [button3 setTitle:@"rollBack" forState:UIControlStateNormal];
    [button3 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];

    
    [button3 addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button3];
    
    button.translatesAutoresizingMaskIntoConstraints = NO;
    [button.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:100].active = YES;
    [button.leadingAnchor constraintEqualToAnchor:self.view.leadingAnchor constant:30].active = YES;
    [button.widthAnchor constraintEqualToConstant:100].active = YES;
    [button.heightAnchor constraintEqualToConstant:60].active = YES;
    
    button2.translatesAutoresizingMaskIntoConstraints = NO;
    [button2.topAnchor constraintEqualToAnchor:button.topAnchor].active = YES;
    [button2.leadingAnchor constraintEqualToAnchor:button.trailingAnchor constant:30].active = YES;
    [button2.widthAnchor constraintEqualToAnchor:button.widthAnchor].active = YES;
    [button2.heightAnchor constraintEqualToAnchor:button.heightAnchor].active = YES;

    
    button3.translatesAutoresizingMaskIntoConstraints = NO;
    [button3.topAnchor constraintEqualToAnchor:self.view.topAnchor constant:100].active = YES;
    [button3.trailingAnchor constraintEqualToAnchor:self.view.trailingAnchor constant:-30].active = YES;
    [button3.widthAnchor constraintEqualToAnchor:button.widthAnchor].active = YES;
    [button3.heightAnchor constraintEqualToAnchor:button.heightAnchor].active = YES;
}

#pragma mark - Action

- (void)buttonAction:(UIButton *)sender {
    if (sender.tag == kButtonTag1) {
        LightCommand *lightCommand = [[LightCommand alloc] initWithReceiver:self.reciver paramter:0.1];
        [[Invoker sharedInstance] addAndExecute:lightCommand];
    } else if (sender.tag == kButtonTag2) {
        DarkCommand *darkCommand = [[DarkCommand alloc] initWithReceiver:self.reciver paramter:0.1];
        [[Invoker sharedInstance] addAndExecute:darkCommand];
        
    } else if (sender.tag == kButtonTag3) {
        [[Invoker sharedInstance] rollBack];
    }
}

@end
