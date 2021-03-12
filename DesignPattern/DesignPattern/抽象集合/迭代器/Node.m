//
//  Node.m
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/9.
//

#import "Node.h"

@implementation Node

+ (instancetype)nodeWithItem:(id)item {
    Node *node = [[[self class] alloc] init];
    node.item = item;
    return node;
}

@end
