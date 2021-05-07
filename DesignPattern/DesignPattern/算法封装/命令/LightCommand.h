//
//  LightCommand.h
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/5/6.
//

#import <Foundation/Foundation.h>
#import "CommandProtocol.h"

@class Receiver;

NS_ASSUME_NONNULL_BEGIN

@interface LightCommand : NSObject <CommandProtocol>

/// 跟Receiver绑定
- (instancetype)initWithReceiver:(Receiver *)receiver paramter:(CGFloat)paramter;

@end

NS_ASSUME_NONNULL_END
