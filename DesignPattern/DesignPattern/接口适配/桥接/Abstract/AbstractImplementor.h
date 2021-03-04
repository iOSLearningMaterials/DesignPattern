//
//  AbstractImplementtor.h
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/3.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// 定义任何仿真器都应支持的命令
typedef NS_ENUM(NSUInteger, CommandType) {
    kCommandUp,
    kCommandDown,
    kCommandLeft,
    kCommandRight,
    kCommandSelect,
    kCommandStart,
    kCommandA,
    kCommandB,
    
    // PSP 特有的功能
    kCommandO,
    kCommandX,
};

/// 抽象执行者
@interface AbstractImplementor : NSObject

- (void)implementCommand:(CommandType)command;

@end

NS_ASSUME_NONNULL_END
