//
//  MementoDemoViewController.m
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/15.
//

#import "MementoDemoViewController.h"
#import "MementoCenter.h"
#import "MementoModel.h"
#import "NSObject+MementoCenter.h"
#import "MementoDemoView.h"

@interface MementoDemoViewController ()

@end

@implementation MementoDemoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor cyanColor];
//    [self mementoTest];
    
    [self mementoDemoView];
}

#pragma mark - Navigation

// demo1备忘录模式验证
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
    
    
    
    /// 使用优化后的分类方法实现
    MementoModel *model2 = [[MementoModel alloc] init];
//    model2.name = @"备忘录模式存储方法优化";
//    model2.age = @(20);
//
//    /// 存储
//    [model2 saveStateWithKey:@"version2"];
    
    /// 获取
    [model2 recoverFromStateWithKey:@"version2"];
    
    NSLog(@"优化后 恢复的数据 --- name === %@, age === %@", model2.name, model2.age);
}


/// demo2备忘录模式在view中的使用
- (void)mementoDemoView {
    MementoDemoView *demoView = [[MementoDemoView alloc] init];
    demoView.backgroundColor = [UIColor redColor];
    [self.view addSubview:demoView];
    
    
//    demoView.frame = CGRectMake(20, 100, 200, 100);
    NSLog(@"demoView的初始frame == %@", demoView);

    // 存储对象的A状态
//    [demoView saveStateWithKey:@"A"];
    
    // 恢复对象的A状态
    [demoView recoverFromStateWithKey:@"A"];
    NSLog(@"demoView恢复后的frame == %@", demoView);
}

@end
