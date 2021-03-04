//
//  AbstractSystem.h
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/3.
//

#import <Foundation/Foundation.h>
#import "AbstractImplementor.h"


/// 游戏机模拟器的实现
/// 1. 模拟器功能的实现
/// 2. 按钮协议的制定
/// 3. 游戏机模拟器的实现

NS_ASSUME_NONNULL_BEGIN

/// 抽象的系统
@interface AbstractSystem : NSObject

/// 执行者
@property (nonatomic, strong) AbstractImplementor *implementor;

/// 加载系统
- (void)loadSystem;

/// 系统的功能
- (void)command_up;
- (void)command_down;
- (void)command_left;
- (void)command_right;
- (void)command_a;
- (void)command_b;

@end

NS_ASSUME_NONNULL_END
