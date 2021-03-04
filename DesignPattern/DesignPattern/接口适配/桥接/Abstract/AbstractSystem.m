//
//  AbstractSystem.m
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/3.
//

#import "AbstractSystem.h"

@implementation AbstractSystem

/// 空实现，由子类来实现
- (void)loadSystem {
    
}

- (void)command_up {
    [self.implementor implementCommand:kCommandUp];
}

- (void)command_down {
    [self.implementor implementCommand:kCommandDown];
}

- (void)command_left {
    [self.implementor implementCommand:kCommandLeft];
}

- (void)command_right {
    [self.implementor implementCommand:kCommandRight];
}

- (void)command_a {
    [self.implementor implementCommand:kCommandA];
}

- (void)command_b {
    [self.implementor implementCommand:kCommandB];
}

@end
