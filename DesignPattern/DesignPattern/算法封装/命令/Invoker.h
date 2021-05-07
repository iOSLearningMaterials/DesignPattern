//
//  Invoker.h
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/30.
//

#import <Foundation/Foundation.h>
#import "CommandProtocol.h"

NS_ASSUME_NONNULL_BEGIN

/// 专门存储命令
@interface Invoker : NSObject

+ (instancetype)sharedInstance;

- (void)rollBack;
- (void)addAndExecute:(id <CommandProtocol>)command;

@end

NS_ASSUME_NONNULL_END
