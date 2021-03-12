//
//  Node.h
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/9.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Node : NSObject

/**
 *  下一个节点
 */
@property (nonatomic, strong) Node *nextNode;

/**
 *  节点里面的内容
 */
@property (nonatomic,   weak) id item;

/// 初始化节点
/// @param item 节点
+ (instancetype)nodeWithItem:(id)item;

@end

NS_ASSUME_NONNULL_END
