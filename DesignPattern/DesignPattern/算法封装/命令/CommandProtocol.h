//
//  CommandProtocol.h
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/30.
//

#import <Foundation/Foundation.h>
#import "Receiver.h"

/**
 将命令抽象成一个接口
 */
NS_ASSUME_NONNULL_BEGIN


@protocol CommandProtocol <NSObject>

@required

/// 命令执行
- (void)excute;

- (void)rollBackExcute;

@end

NS_ASSUME_NONNULL_END
