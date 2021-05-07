//
//  DarkCommand.h
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/4/1.
//

#import <UIKit/UIKit.h>
#import "CommandProtocol.h"

@class Receiver;

NS_ASSUME_NONNULL_BEGIN

@interface DarkCommand : NSObject <CommandProtocol>

/// 跟Receiver绑定
- (instancetype)initWithReceiver:(Receiver *)receiver paramter:(CGFloat)paramter;

@end

NS_ASSUME_NONNULL_END
