//
//  MementoCenterProtocol.h
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/12.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol MementoCenterProtocol <NSObject>

@required

/// 生成当前状态对象快照
- (id)currentObjState;

/// 恢复到指定的状态
/// @param state 状态
- (void)recoverFromState:(id)state;

@end

NS_ASSUME_NONNULL_END
