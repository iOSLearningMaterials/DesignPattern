//
//  MementoModel.m
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/15.
//

#import "MementoModel.h"

@implementation MementoModel

/// 返回当前对象的各个状态值
- (id)currentObjState {
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    [dict setValue:self.name forKey:@"name"];
    [dict setValue:self.age forKey:@"age"];
    return dict;
}

/// 将对象的各个状态重置
- (void)recoverFromState:(id)state {
    NSDictionary *dict = (NSDictionary *)state;
    self.name = [dict valueForKey:@"name"];
    self.age = [dict valueForKey:@"age"];
}

@end
