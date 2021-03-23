//
//  AbstractEtypeValue.h
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/22.
//

/**
 将错误抽象成一个基类，提供一个统一方法
 */
#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface AbstractEtypeValue : NSObject


/// 返回正确的字符串
+ (NSString *)showString;

@end

NS_ASSUME_NONNULL_END
