//
//  NSObject+MementoCenter.h
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/15.
//

/**
 优化备忘录中的存储方案
 1. 避免暴漏MementoCenter类中的细节（具体的方法）
 */
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSObject (MementoCenter)

/// 存储对象状态
/// @param key key
- (void)saveStateWithKey:(NSString *)key;


/// 恢复对象
/// @param key key
- (void)recoverFromStateWithKey:(NSString *)key;

@end

NS_ASSUME_NONNULL_END
