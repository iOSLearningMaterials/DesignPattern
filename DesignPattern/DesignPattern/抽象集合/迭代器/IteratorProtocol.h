//
//  IteratorProtocol.h
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/9.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
/// 迭代器协议
@protocol IteratorProtocol <NSObject>

/**
 *  下一个对象
 *
 *  @return 对象
 */
- (id)nextObject;

/**
 *  是否存在下一个对象
 *
 *  @return 对象
 */
- (BOOL)hasNext;

/**
 *  内容
 *
 *  @return 返回内容
 */
- (id)item;


@end

NS_ASSUME_NONNULL_END
