//
//  CustomView.m
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/9.
//

#import "CustomView.h"
#import "LinkedList.h"
#import "Node.h"

/**
 知识最少原则，不应该暴漏在 .h 文件中
 */

@interface CustomView ()

@property (nonatomic, strong) UILabel *nameLabel;
@property (nonatomic, strong) UIButton *button;
@property (nonatomic, strong) UITextField *textField;

/// 实现nextObject需要链表
@property (nonatomic, strong) LinkedList *linkList;
@property (nonatomic, strong) Node *currentNode;

@end

@implementation CustomView

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupUI];
    }
    return self;
}


- (void)setupUI {
    self.button = [[UIButton alloc] initWithFrame:self.bounds];
    self.nameLabel = [[UILabel alloc] initWithFrame:self.bounds];
    self.textField = [[UITextField alloc] initWithFrame:self.bounds];
    
    [self addSubview:self.button];
    [self addSubview:self.nameLabel];
    [self addSubview:self.textField];
    
    self.linkList = [[LinkedList alloc] init];
    [self.linkList addItem:self.button];
    [self.linkList addItem:self.nameLabel];
    [self.linkList addItem:self.textField];
    
    self.currentNode = self.linkList.headNode;
}


- (nonnull id)nextObject {
    self.currentNode = self.currentNode.nextNode;
    return self.currentNode;
}

@end
