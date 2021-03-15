//
//  MementoDemoViewController.m
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/15.
//

#import "MementoDemoViewController.h"
#import "MementoCenter.h"
#import "MementoModel.h"


@interface MementoDemoViewController ()

@end

@implementation MementoDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self mementoTest];
}

#pragma mark - Navigation

// 备忘录模式验证
- (void)mementoTest {
    // 创建model，
    MementoModel *model = [[MementoModel alloc] init];
//    model.name = @"备忘录模式";
//    model.age = @(1);
//
//    // save state 根据状态存储对象
//    [MementoCenter saveMementoObject:[model currentObjState] withKey:@"model"];
    
    // 对象恢复某一条记录
    [model recoverFromState:[MementoCenter mementoObjectWithKey:@"model"]];
    
    NSLog(@"从本地存储中恢复的数据 --- name === %@, age === %@", model.name, model.age);
}

@end
