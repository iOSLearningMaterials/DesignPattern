//
//  MementoCenter.m
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/12.
//

#import "MementoCenter.h"
#import "FastCoder.h"

@implementation MementoCenter

+ (void)saveMementoObject:(id<MementoCenterProtocol>)mementoObject withKey:(NSString *)key {
    NSParameterAssert(mementoObject);
    NSParameterAssert(key);
    
    NSData *data = [self dataWithObj:mementoObject];
    if (data) {
        [self storeValue:data with:key];
    }
}

+ (id)mementoObjectWithKey:(NSString *)key {
    NSParameterAssert(key);
    NSData *data = [self valueWithKey:key];
    if (data) {
        return [self objWithData:data];
    }
    return nil;
}

#pragma mark - Private

/// 使用FastCoder格式化数据
+ (NSData *)dataWithObj:(id)obj {
    return [FastCoder dataWithRootObject:obj];
}

+ (id)objWithData:(NSData *)data {
    return [FastCoder objectWithData:data];
}

#pragma mark - 本地存储
+ (void)storeValue:(id)value with:(NSString *)key {
    NSParameterAssert(key);
    [[NSUserDefaults standardUserDefaults] setValue:value forKey:key];
}

+ (id)valueWithKey:(NSString *)key {
    NSParameterAssert(key);
    return [[NSUserDefaults standardUserDefaults] objectForKey:key];
}

@end
