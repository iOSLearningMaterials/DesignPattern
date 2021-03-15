//
//  NSObject+MementoCenter.m
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/15.
//

#import "NSObject+MementoCenter.h"
#import "MementoCenter.h"

@implementation NSObject (MementoCenter)

- (void)saveStateWithKey:(NSString *)key {
    if ([self conformsToProtocol:@protocol(MementoCenterProtocol)]) {
        id<MementoCenterProtocol> obj = (id<MementoCenterProtocol>)self;
        if ([self respondsToSelector:@selector(currentObjState)]) {
            [MementoCenter saveMementoObject:obj withKey:key];
        }
    }
}

- (void)recoverFromStateWithKey:(NSString *)key {
    if ([self conformsToProtocol:@protocol(MementoCenterProtocol)]) {
        id<MementoCenterProtocol> obj = (id<MementoCenterProtocol>)self;
        // 获取状态
        id state = [MementoCenter mementoObjectWithKey:key];
        if ([obj respondsToSelector:@selector(recoverFromState:)]) {
            [obj recoverFromState:state];
        }
    }
}

@end
