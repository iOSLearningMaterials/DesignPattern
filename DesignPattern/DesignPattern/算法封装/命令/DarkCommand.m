//
//  DarkCommand.m
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/4/1.
//

#import "DarkCommand.h"
#import "Receiver.h"

@interface DarkCommand ()

@property (nonatomic,   weak) Receiver *receiver;
@property (nonatomic, assign) CGFloat parameter;

@end

@implementation DarkCommand

- (instancetype)initWithReceiver:(Receiver *)receiver paramter:(CGFloat)paramter {
    self = [super init];
    if (self) {
        self.receiver = receiver;
        self.parameter = paramter;
    }
    return self;
}

#pragma mark - CommandProtocol

/// 本质是让receiver执行操作
- (void)excute {
    [self.receiver makeViewDarker:self.parameter];
}

- (void)rollBackExcute {
    [self.receiver makeViewLighter:self.parameter];
}

@end
