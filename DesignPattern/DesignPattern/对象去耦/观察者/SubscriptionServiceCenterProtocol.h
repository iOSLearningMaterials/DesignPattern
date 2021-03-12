//
//  SubscriptionServiceCenterProtocol.h
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/11.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol SubscriptionServiceCenterProtocol <NSObject>

/**
 *  接收到的订阅信息
 *
 *  @param message            订阅信息
 *  @param subscriptionNumber 订阅编号
 */
- (void)reciveSubscriptionMessage:(id)message subscriptionNumber:(NSString *)subscriptionNumber;

@end

NS_ASSUME_NONNULL_END
