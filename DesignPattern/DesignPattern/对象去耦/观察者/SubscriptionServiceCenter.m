//
//  SubscriptionServiceCenter.m
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/11.
//

#import "SubscriptionServiceCenter.h"

static  NSMutableDictionary  *_subscriptionNumberDictionary = nil;

@implementation SubscriptionServiceCenter

+ (instancetype)sharedInstance {
    static dispatch_once_t onceToken;
    static SubscriptionServiceCenter *instance = nil;
    dispatch_once(&onceToken, ^{
        instance = [[super allocWithZone:NULL] init];
        _subscriptionNumberDictionary = [NSMutableDictionary dictionary];
    });
    return instance;
}

+ (id)allocWithZone:(struct _NSZone *)zone {
    return [self sharedInstance];
}

+ (void)createSubscriptionNumber:(NSString *)subscriptionNumber {
    NSParameterAssert(subscriptionNumber);
    NSHashTable *hashTable = [self existSubscriptionNumber:subscriptionNumber];
    if (hashTable == nil) {
        hashTable = [NSHashTable weakObjectsHashTable];
        [_subscriptionNumberDictionary setObject:hashTable forKey:subscriptionNumber];
    }
}

+ (void)removeSubscriptionNumber:(NSString *)subscriptionNumber {
    NSParameterAssert(subscriptionNumber);
    NSHashTable *hashTable = [self existSubscriptionNumber:subscriptionNumber];
    if (hashTable) {
        [_subscriptionNumberDictionary removeObjectForKey:subscriptionNumber];
    }
}

+ (void)addCustomer:(id<SubscriptionServiceCenterProtocol>)customer withSubscriptionNumber:(NSString *)subscriptionNumber {
    NSParameterAssert(subscriptionNumber);
    NSParameterAssert(customer);
    
    // 判断刊物是否存在
    NSHashTable *hashTable = [self existSubscriptionNumber:subscriptionNumber];
    [hashTable addObject:customer];
}

+ (void)removeCustomer:(id<SubscriptionServiceCenterProtocol>)customer fromSubscriptionNumber:(NSString *)subscriptionNumber {
    NSParameterAssert(subscriptionNumber);
    NSParameterAssert(customer);
    
    NSHashTable *hashTable = [self existSubscriptionNumber:subscriptionNumber];
    [hashTable removeObject:customer];
}

+ (void)sendMessage:(id)message toSubscriptionNumber:(NSString *)subscriptionNumber {
    NSParameterAssert(subscriptionNumber);
    NSHashTable *hashTable = [self existSubscriptionNumber:subscriptionNumber];
    if (hashTable) {
        // 使用迭代器遍历
        NSEnumerator *itertor = [hashTable objectEnumerator];
        id <SubscriptionServiceCenterProtocol> obj = nil;
        while (obj = [itertor nextObject]) {
            if ([obj respondsToSelector:@selector(reciveSubscriptionMessage:subscriptionNumber:)]) {
                [obj reciveSubscriptionMessage:message subscriptionNumber:subscriptionNumber];
            }
        }
    }
}

#pragma mark - Private

/// 判断是否存在订阅者的hashTable
/// @param subscriptionNumber 订阅号
+ (NSHashTable *)existSubscriptionNumber:(NSString *)subscriptionNumber {
    return [_subscriptionNumberDictionary objectForKey:subscriptionNumber];
}

@end
