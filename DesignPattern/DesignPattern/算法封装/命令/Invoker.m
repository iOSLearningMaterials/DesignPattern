//
//  Invoker.m
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/30.
//

#import "Invoker.h"

@interface Invoker ()

/// 存储命令的数组
@property (nonatomic, strong) NSMutableArray *commandQueue;

@end

@implementation Invoker

+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    static Invoker *instance = nil;
    dispatch_once(&onceToken, ^{
        instance = [[super allocWithZone:NULL] init];
        instance.commandQueue = [NSMutableArray array];
    });
    return instance;
}

+ (id)allocWithZone:(struct _NSZone *)zone {
    return [self sharedInstance];
}

/// 支持回退
- (void)rollBack {
    id <CommandProtocol> command = self.commandQueue.lastObject;
    [command rollBackExcute];
    [self.commandQueue removeLastObject];
}

/// 添加并执行命令
- (void)addAndExecute:(id <CommandProtocol>)command {
    NSParameterAssert(command);
    [self.commandQueue addObject:command];
    [command excute];
}

@end
