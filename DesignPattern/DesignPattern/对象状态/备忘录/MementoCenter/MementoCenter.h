//
//  MementoCenter.h
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/12.
//
/**
 备忘录中心
 备忘录模式存储的是对象的某个状态，并不是这个对象
 */
#import <Foundation/Foundation.h>
#import "MementoCenterProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface MementoCenter : NSObject


/// 保存对象到备忘录
/// @param mementoObject 备忘录对象
/// @param key 标记对象
+ (void)saveMementoObject:(id <MementoCenterProtocol>)mementoObject withKey:(NSString *)key;


/// 获取对象
/// @param key 获取对象的key
+ (id)mementoObjectWithKey:(NSString *)key;

@end

NS_ASSUME_NONNULL_END
