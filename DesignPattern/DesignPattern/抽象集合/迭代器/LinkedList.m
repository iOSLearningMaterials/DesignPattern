//
//  LinkedList.m
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/9.
//

#import "LinkedList.h"
#import "Node.h"


@implementation LinkedList

- (instancetype)init
{
    self = [super init];
    if (self) {
        
    }
    return self;
}

- (void)addItem:(id)item {
    if (self.headNode == nil) {
        self.headNode = [Node nodeWithItem:item];
    } else {
        [self addItem:item node:self.headNode];
    }
}

- (void)addItem:(id)item node:(Node *)node {
    if (node.nextNode == nil) {
        node.nextNode = [Node nodeWithItem:item];
    } else {
        [self addItem:item node:node.nextNode];
    }
}

@end
