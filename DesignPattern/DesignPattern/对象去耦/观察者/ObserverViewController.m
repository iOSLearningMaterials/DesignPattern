//
//  ObserverViewController.m
//  DesignPattern
//
//  Created by 于鸿鹏 on 2021/3/11.
//

#import "ObserverViewController.h"
#import "SubscriptionServiceCenter.h"


@interface ObserverViewController () <SubscriptionServiceCenterProtocol>

@end

@implementation ObserverViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    NSString *objNameA = @"A";
    NSString *objNameB = @"B";
    NSString *objNameC = @"C";
    
    // 创建订阅号
    [SubscriptionServiceCenter sharedInstance];
    
    [SubscriptionServiceCenter createSubscriptionNumber:objNameA];
    [SubscriptionServiceCenter createSubscriptionNumber:objNameB];
    [SubscriptionServiceCenter createSubscriptionNumber:objNameC];
    
    // 添加订阅者到指定对象
    [SubscriptionServiceCenter addCustomer:self withSubscriptionNumber:objNameA];
    
    [SubscriptionServiceCenter sendMessage:@"objNameA" toSubscriptionNumber:objNameA];
    
}


#pragma mark - SubscriptionServiceCenterProtocol

- (void)reciveSubscriptionMessage:(id)message subscriptionNumber:(NSString *)subscriptionNumber {
    NSLog(@"message --- %@ ---subscriptionNumber == %@", message, subscriptionNumber);
}


@end
