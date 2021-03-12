//
//  LinkListIterator.h
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/10.
//

#import <Foundation/Foundation.h>
#import "IteratorProtocol.h"

@class LinkedList;

NS_ASSUME_NONNULL_BEGIN

@interface LinkListIterator : NSObject<IteratorProtocol>

/// 由链表进行初始化，返回迭代器
/// @param linkList 链表对象
+ (instancetype)linkListIterator:(LinkedList *)linkList;

@end

NS_ASSUME_NONNULL_END
