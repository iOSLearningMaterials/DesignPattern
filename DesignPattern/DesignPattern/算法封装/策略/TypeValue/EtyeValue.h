//
//  EtyeValue.h
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/22.
//

/**
 使用面向对象的思想，将逻辑处理交给一个对象
 */
#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, ETypeValue2) {
    ETypeValue_A,
    ETypeValue_B,
    ETypeValue_C,
    ETypeValue_D,
    ETypeValue_E,
};

NS_ASSUME_NONNULL_BEGIN

@interface EtyeValue : NSObject


/// 给定一个type，返回字符串
/// @param type 返回字符串
+ (NSString *)type:(ETypeValue2)type;

@end

NS_ASSUME_NONNULL_END
