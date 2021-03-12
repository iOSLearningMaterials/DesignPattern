//
//  SubscriptionServiceCenter.h
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/11.
//

/**
 订阅服务中心，(单例)
 */
#import <Foundation/Foundation.h>
#import "SubscriptionServiceCenterProtocol.h"


NS_ASSUME_NONNULL_BEGIN

@interface SubscriptionServiceCenter : NSObject

+ (instancetype)sharedInstance;

/**
 *  创建订阅号
 *
 *  @param subscriptionNumber 订阅号码
 */
+ (void)createSubscriptionNumber:(NSString *)subscriptionNumber;

/**
 *  移除订阅号(参与到该订阅号码的所有客户不会再收到订阅信息)
 *
 *  @param subscriptionNumber 订阅号码
 */
+ (void)removeSubscriptionNumber:(NSString *)subscriptionNumber;

/**
 *  将指定客户从指定订阅号上移除掉
 *
 *  @param customer           客户对象
 *  @param subscriptionNumber 订阅号码
 */
+ (void)removeCustomer:(id <SubscriptionServiceCenterProtocol>)customer fromSubscriptionNumber:(NSString *)subscriptionNumber;

/**
 *  通知签订了订阅号码的对象
 *
 *  @param message            信息对象
 *  @param subscriptionNumber 订阅号码
 */
+ (void)sendMessage:(id)message toSubscriptionNumber:(NSString *)subscriptionNumber;

/**
 *  客户订阅指定的订阅号
 *
 *  @param customer           客户对象
 *  @param subscriptionNumber 订阅号码
 */
+ (void)addCustomer:(id <SubscriptionServiceCenterProtocol>)customer withSubscriptionNumber:(NSString *)subscriptionNumber;

@end

NS_ASSUME_NONNULL_END
