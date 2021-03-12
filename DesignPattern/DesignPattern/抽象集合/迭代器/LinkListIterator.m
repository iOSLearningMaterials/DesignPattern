//
//  LinkListIterator.m
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/10.
//

#import "LinkListIterator.h"
#import "LinkedList.h"
#import "Node.h"

@interface LinkListIterator ()

@property (nonatomic, strong) LinkedList *linkList;
@property (nonatomic, strong) Node *currentNode;

@end

@implementation LinkListIterator

+ (instancetype)linkListIterator:(LinkedList *)linkList {
    LinkListIterator *linkIterator = [[LinkListIterator alloc] init];
    linkIterator.linkList = linkList;
    linkIterator.currentNode = linkList.headNode.nextNode;
    return linkIterator;
}

- (id)nextObject {
    self.currentNode = self.currentNode.nextNode;
    return self.currentNode;
}

@end
