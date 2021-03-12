//
//  LinkedList.h
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/9.
//

#import <Foundation/Foundation.h>

@class Node;

NS_ASSUME_NONNULL_BEGIN

@interface LinkedList : NSObject

/// 头结点
@property (nonatomic, strong, readwrite) Node *headNode;

/// 节点的数量
@property (nonatomic, assign, readwrite) NSInteger  numberOfNodes;


/// 添加数据
/// @param item 数据
- (void)addItem:(id)item;

@end

NS_ASSUME_NONNULL_END
