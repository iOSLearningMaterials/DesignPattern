//
//  Game.h
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/23.
//

#import <Foundation/Foundation.h>
#import "GameProtocol.h"


NS_ASSUME_NONNULL_BEGIN

/// 基类
@interface Game : NSObject

/// 初始化游戏
- (void)initGame;

/// 保存
- (void)save;

/// 暂停
- (void)pause;

/// 开始游戏
- (void)startPlay;

/// 退出
- (void)exitGame;

@end

NS_ASSUME_NONNULL_END
